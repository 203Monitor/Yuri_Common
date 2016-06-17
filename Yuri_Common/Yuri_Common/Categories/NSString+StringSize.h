//
//  NSString+StringSize.h
//
//  Created by 武国斌 on 16/1/18.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (StringSize)

- (CGSize)sizeOfTextWithMaxSize:(CGSize)maxSize font:(UIFont *)font;
+ (CGSize)sizeOftextWithtext :(NSString *)text maxsize:(CGSize)size font:(UIFont *)font;

@end
