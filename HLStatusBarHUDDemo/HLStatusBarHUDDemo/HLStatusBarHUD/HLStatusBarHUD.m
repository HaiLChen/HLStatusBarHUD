//
//  HLStatusBarHUD.m
//  01-第三方框架尝试
//
//  Created by 陈海龙 on 15-1-26.
//  Copyright (c) 2015年 heima. All rights reserved.
//

#import "HLStatusBarHUD.h"

@implementation HLStatusBarHUD
/**
 *  全局变量（成功或者失败的窗口）
 */
UIWindow *_window;
/**
 *  全局变量（加载窗口）
 */
UIWindow *_window1;

/**
 *  显示窗口方法
 *
 *  @param message 信息
 *
 *  @param image 图片
 */
+ (void)showStatusBar:(NSString *)message image:(UIImage *)image {
    if (_window) {
        return;
    }
    UIWindow *window = [[UIWindow alloc] init];
    CGFloat windowWidth = [UIScreen mainScreen].bounds.size.width;
    window.frame = CGRectMake(0, 0, windowWidth, -20);
    window.backgroundColor = [UIColor blackColor];
    
    // 窗口的级别，级别高的覆盖在级别低的window上
    // UIWindowLevelAlert > UIWindowLevelStatusBar > UIWindowLevelNormal
    window.windowLevel = UIWindowLevelAlert;
    //自定义window默认是隐藏的
    window.hidden = NO;
    _window = window;
    
    //创建按钮
    UIButton *btn = [[UIButton alloc] init];
    //设置按钮文字的内内边距
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    btn.frame = _window.bounds;
    [btn setTitle:message forState:UIControlStateNormal];
    [btn setImage:image forState:UIControlStateNormal];
    [_window addSubview:btn];
    
    //动画
    [UIView animateWithDuration:1.5 animations:^{
        CGRect rect = _window.frame;
        rect.origin.y = 0;
        _window.frame = rect;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.5 animations:^{
            CGRect rect = _window.frame;
            rect.origin.y = -20;
            _window.frame = rect;
        } completion:^(BOOL finished) {
            _window = nil;
        }];
    }];
}

/**
 *  显示成功信息(只包含信息)
 *
 *  @param message 信息
 */
+ (void)showSuccess:(NSString *)message {
    [HLStatusBarHUD showStatusBar:message image:[UIImage imageNamed:@"HLStatusBarHUD.bundle/success"]];
    //    NSLog(@"%@",message);
}

/**
 *  显示成功信息(包括信息，图片)
 *
 *  @param message 信息
 *  @param image   图片
 */
+ (void)showSuccess:(NSString *)message image:(UIImage *)image {
    [HLStatusBarHUD showStatusBar:message image:image];
}

/**
 *  显示失败信息(只包含信息)
 *
 *  @param message 信息
 */
+ (void)showError:(NSString *)message {
    [HLStatusBarHUD showStatusBar:message image:[UIImage imageNamed:@"HLStatusBarHUD.bundle/error"]];
}

/**
 *  显示失败信息(包含信息，图片)
 *
 *  @param message 信息
 *  @param image   图片
 */
+ (void)showError:(NSString *)message image:(UIImage *)image {
    [HLStatusBarHUD showStatusBar:message image:image];
}

/**
 *  显示加载信息
 *
 *  @param message 信息
 */
+ (void)showLoad:(NSString *)message {
    if (_window1) {
        return;
    }
    UIWindow *window = [[UIWindow alloc] init];
    window.backgroundColor = [UIColor blackColor];
    window.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    window.windowLevel = UIWindowLevelAlert;
    window.hidden = NO;
    _window1 = window;
    
    //设置label
    UILabel *label = [[UILabel alloc] init];
    label.text = message;
    NSLog(@"%@",message);
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:12];
    label.frame = _window1.bounds;
    [_window1 addSubview:label];
    
    //加载圈圈(菊花)
    UIActivityIndicatorView *activityView = [[UIActivityIndicatorView alloc] init];
    //让菊花动起来
    [activityView startAnimating];
    activityView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width * 0.3, 0, 20, 20);
    [_window1 addSubview:activityView];
}

/**
 *  隐藏进度条
 */
+ (void)hiddenLoad {
    [UIView animateWithDuration:1.5 animations:^{
        CGRect rect = _window1.bounds;
        rect.origin.y = -20;
        _window1.frame = rect;
    } completion:^(BOOL finished) {
        _window1 = nil;
    }];
    
}
@end
