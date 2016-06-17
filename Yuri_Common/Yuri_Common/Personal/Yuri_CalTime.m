//
//  Yuri_CalTime.m
//
//  Created by 武国斌 on 16/1/13.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import "Yuri_CalTime.h"

@implementation Yuri_CalTime

+ (NSString *)convertWithDouble:(double)time {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeZone = [NSTimeZone timeZoneWithName:@"shanghai"];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSTimeInterval timeStr = time;
    NSDate *change = [NSDate dateWithTimeIntervalSince1970:timeStr];
    NSString *changeTo = [dateFormatter stringFromDate:change];
    return changeTo;
}

+ (NSString *)convertWithString:(NSString *)time {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeZone = [NSTimeZone timeZoneWithName:@"shanghai"];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSTimeInterval timeStr = [time doubleValue];
    NSDate *change = [NSDate dateWithTimeIntervalSince1970:timeStr];
    NSString *changeTo = [dateFormatter stringFromDate:change];
    return changeTo;
}

+ (NSString *)subStringToMin:(NSString *)time {
    NSRange range = {5,11};
    NSString *timeStr = [[NSMutableString stringWithString:time] substringWithRange:range];
    return timeStr;
}

@end
