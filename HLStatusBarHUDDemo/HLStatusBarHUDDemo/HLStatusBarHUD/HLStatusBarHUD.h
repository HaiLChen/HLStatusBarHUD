//
//  HLStatusBarHUD.h
//  01-第三方框架尝试
//
//  Created by 陈海龙 on 15-1-26.
//  Copyright (c) 2015年 heima. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface HLStatusBarHUD : NSObject
/**
 *  显示成功信息
 *
 *  @param message 信息
 */
+ (void)showSuccess:(NSString *)message;

/**
 *  显示成功信息(包括信息，图片)
 *
 *  @param message 信息
 *  @param image   图片
 */
+ (void)showSuccess:(NSString *)message image:(UIImage *)image;

/**
 *  显示窗口方法
 *
 *  @param message 信息
 *
 *  @param image 图片
 */
+ (void)showStatusBar:(NSString *)message image:(UIImage *)image;

/**
 *  显示失败信息(只包含信息)
 *
 *  @param message 信息
 */
+ (void)showError:(NSString *)message;

/**
 *  显示失败信息(包含信息，图片)
 *
 *  @param message 信息
 *  @param image   图片
 */
+ (void)showError:(NSString *)message image:(UIImage *)image;

/**
 *  显示加载信息
 *
 *  @param message 信息
 */
+ (void)showLoad:(NSString *)message;

/**
 *  隐藏进度条
 */
+ (void)hiddenLoad;
@end
