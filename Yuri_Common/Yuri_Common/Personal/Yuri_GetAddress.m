//
//  Yuri_GetAddress.m
//
//  Created by 武国斌 on 15/12/10.
//  Copyright © 2015年 Yucapri. All rights reserved.
//

#import "Yuri_GetAddress.h"

@implementation Yuri_GetAddress

+ (NSDictionary *)getAddress {
    NSMutableArray *allPeople = [NSMutableArray array];
    
    CFErrorRef error = NULL;
    ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(NULL, &error);
    dispatch_semaphore_t sema = dispatch_semaphore_create(0);
    ABAddressBookRequestAccessWithCompletion(addressBook, ^(bool granted, CFErrorRef error) {
        dispatch_semaphore_signal(sema);
    });
    dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    //如果没有授权则退出
    if (ABAddressBookGetAuthorizationStatus() != kABAuthorizationStatusAuthorized) {
        NSLog(@"yuri提示您:没有权限");
//        CFRelease(addressBook);
        return nil;
    }else {
        //查询所有
        NSArray *weaklist = CFBridgingRelease(ABAddressBookCopyArrayOfAllPeople(addressBook));
        for (int i=0 ;i<[weaklist count] ;i++) {
            ABRecordRef thisPerson = CFBridgingRetain([weaklist objectAtIndex:i]);
            NSString *firstName = CFBridgingRelease(ABRecordCopyValue(thisPerson, kABPersonFirstNameProperty));
            firstName = firstName != nil?firstName:@"";
            
            NSString *lastName =  CFBridgingRelease(ABRecordCopyValue(thisPerson, kABPersonLastNameProperty));
            lastName = lastName != nil?lastName:@"";
            
            NSString *name = [NSString stringWithFormat:@"%@%@",lastName,firstName];
            NSMutableArray *array = [NSMutableArray array];
            NSDictionary *dict = [NSDictionary dictionary];
            //读取电话多值
            ABMultiValueRef phone = ABRecordCopyValue(thisPerson, kABPersonPhoneProperty);
            for (int k = 0; k<ABMultiValueGetCount(phone); k++)
            {
                //获取电话Label
//                    NSString * personPhoneLabel = (__bridge NSString*)ABAddressBookCopyLocalizedLabel(ABMultiValueCopyLabelAtIndex(phone, k));
                //获取該Label下的电话值
                NSString * personPhone = (__bridge NSString*)ABMultiValueCopyValueAtIndex(phone, k);
                NSMutableString *string1 = [NSMutableString stringWithString:personPhone];
                NSString *string2 = [string1 stringByReplacingOccurrencesOfString:@"+86"withString:@""];
                NSString *string3 = [string2 stringByReplacingOccurrencesOfString:@" "withString:@""];
                NSString *string4 = [string3 stringByReplacingOccurrencesOfString:@"-"withString:@""];
                NSString *string5 = [string4 stringByReplacingOccurrencesOfString:@"-"withString:@""];
                [array addObject:string5];
            }
            CFRelease(thisPerson);
            dict = @{name:array};
            [allPeople addObject:dict];
        }
        CFRelease(addressBook);
        
        NSMutableArray *result = [NSMutableArray array];
        NSString *pattern = @"^1([3578]{1}\\d{1}|47|45)\\d{8}$";
        NSPredicate *cellPhoneNum = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",pattern];

        for (NSDictionary *dict in allPeople) {
            NSString *name = [dict allKeys].firstObject;
            NSMutableArray *array = [NSMutableArray array];
            NSInteger state = 0;
            for (NSString *testNum in dict[name]) {
                if ([cellPhoneNum evaluateWithObject:testNum]) {
                    state = 1;
                    [array addObject:testNum];
                }else {
                    ;
                }
            }
            if (state == 1) {
                [result addObject:@{name:array}];
            }
        }
        
        
        NSMutableDictionary *withName = [NSMutableDictionary dictionary];
        for (NSDictionary *dict in result) {
            NSString *name = [dict allKeys].firstObject;
            NSString *phoneNum = [dict[name] firstObject];
            NSDictionary *dict = @{@"name":name,@"phoneNum":phoneNum};
            [withName setObject:dict forKey:phoneNum];
        }

        NSMutableArray *withoutName = [NSMutableArray array];
        for (NSDictionary *dict in result) {
            NSString *name = [dict allKeys].firstObject;
            NSString *phoneNum = [dict[name] firstObject];
            [withoutName addObject:phoneNum];
        }
        
        return @{@"withName":withName,@"withoutName":withoutName};
    }
}

// 将字典或者数组转化为JSON串
+ (NSString *)toJSONData:(id)theData {
    
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:theData
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    if ([jsonData length] > 0 && error == nil){
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }else{
        return nil;
    }
}

@end
