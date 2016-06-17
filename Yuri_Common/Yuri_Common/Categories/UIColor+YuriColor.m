//
//  UIColor+YuriColor.m
//
//  Created by 武国斌 on 16/1/18.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import "UIColor+YuriColor.h"

@implementation UIColor (YuriColor)

+ (UIColor *)RandomColor {
    NSInteger aRedValue = arc4random() % 255;
    NSInteger aGreenValue = arc4random() % 255;
    NSInteger aBlueValue = arc4random() % 255;
    UIColor *randColor = [UIColor colorWithRed:aRedValue / 255.0f green:aGreenValue / 255.0f blue:aBlueValue / 255.0f alpha:1.0f];
    return randColor;
}

+ (UIColor *)aColorWithRBGString:(NSString *) RBGString {
    NSInteger   aRedValue = strtoul([[RBGString substringWithRange:NSMakeRange(0, 2)] UTF8String],0,16);
    NSInteger   aGreenValue = strtoul([[RBGString substringWithRange:NSMakeRange(2, 2)] UTF8String],0,16);
    NSInteger  aBlueValue = strtoul([[RBGString substringWithRange:NSMakeRange(4, 2)] UTF8String],0,16);
    
    UIColor *aColor = [UIColor colorWithRed:aRedValue / 255.0f green:aGreenValue / 255.0f blue:aBlueValue / 255.0f alpha:1.0f];
    return aColor;
}

@end
