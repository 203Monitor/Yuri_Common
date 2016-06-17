//
//  Yuri_GetAddress.h
//
//  Created by 武国斌 on 15/12/10.
//  Copyright © 2015年 Yucapri. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface Yuri_GetAddress : NSObject

+ (NSDictionary *)getAddress;
+ (NSString *)toJSONData:(id)theData;

@end
