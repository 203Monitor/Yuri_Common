//
//  UIBarButtonItem+Extension.h
//
//  Created by 武国斌 on 16/1/18.
//  Copyright © 2016年 Yucapri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

/**
 *  创建一个图片按钮
 *
 *  @param image            图片按钮默认显示的图片
 *  @param highlightedImage 图片按钮高亮状态显示的图片
 *  @param target           谁来监听图片按钮的点击
 *  @param action           监听到点击事件后调用什么方法
 *
 *  @return 图片按钮
 */
+ (UIBarButtonItem *)itemWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action;

@end
