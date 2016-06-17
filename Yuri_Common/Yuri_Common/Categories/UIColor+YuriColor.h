//
//  UIColor+YuriColor.h
//
//  Created by 武国斌 on 16/1/18.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (YuriColor)

/**
 随机颜色
 */
+ (UIColor *)RandomColor;
/**
 通过RGB创建颜色
 */
+ (UIColor *)aColorWithRBGString:(NSString *) RBGString;

@end


