//
//  NSString+StringSize.m
//
//  Created by 武国斌 on 16/1/18.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import "NSString+StringSize.h"

@implementation NSString (StringSize)

- (CGSize)sizeOfTextWithMaxSize:(CGSize)maxSize font:(UIFont *)font {
    NSDictionary *dict = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
}

+ (CGSize)sizeOftextWithtext :(NSString *)text maxsize:(CGSize)size font:(UIFont *)font {
    return [text sizeOfTextWithMaxSize:size font:font];
}

@end
