//
//  Yuri_CalTime.h
//
//  Created by 武国斌 on 16/1/13.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Yuri_CalTime : NSObject

/**
 方法:将double时间戳转化成时间
 */
+ (NSString *)convertWithDouble:(double)time;
/**
 方法:将字符串时间戳转化成时间
 */
+ (NSString *)convertWithString:(NSString *)time;
/**
 方法:截取到分钟
 */
+ (NSString *)subStringToMin:(NSString *)time;

@end
