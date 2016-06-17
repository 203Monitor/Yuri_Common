//
//  UIImage+Extension.h
//
//  Created by 武国斌 on 16/1/18.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 *  根据图片名自动加载适配iOS6\7的图片
 */
+ (UIImage *)imageWithName:(NSString *)name;

/**
 *  根据图片名返回一张能够自由拉伸的图片
 */
+ (UIImage *)resizedImage:(NSString *)name;

/**
 * 加载图片，不能加载放到xcassets中得图片
 */
+ (UIImage*)imageFromMainBundleFile:(NSString*)aFileName;

/**
 * 指定颜色值，生成一张纯色图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 * 生成一张缩略图:65*65
 */
+ (UIImage *) thumbnailImageForImage:(UIImage *) image;

/**
 * 拍摄的图片有时候是侧着的或者倒着，将这样的照片调整方向
 */
+ (UIImage *)rotateImage:(UIImage *)aImage;

/**
 * 压缩图片宽度高度
 */
- (UIImage *)transformtoSize:(CGSize)Newsize;

- (UIImage *)maskedWithMaskingImage:(UIImage *)maskingImage;

/**
 *  生成一张圆形图片
 *
 *  @param name        需要生成的图片名称
 *  @param borderWidth 生成的圆形图片的边框
 *  @param borderColor 边框的颜色
 *
 *  @return 圆形图片
 */
+ (instancetype)circleImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

/**
 *  将当前图片变成圆形图片
 *
 *  @param borderWidth 生成的圆形图片的边框
 *  @param borderColor 边框的颜色
 *
 *  @return 圆形图片
 */
- (instancetype)circleImageWithBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

@end
