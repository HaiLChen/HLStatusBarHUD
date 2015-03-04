//
//  ViewController.m
//  HLStatusBarHUDDemo
//
//  Created by 陈海龙 on 15/3/4.
//  Copyright (c) 2015年 chenhailong. All rights reserved.
//

#import "ViewController.h"
#import "HLStatusBarHUD.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *successBtn;
@property (weak, nonatomic) IBOutlet UIButton *errorBtn;
@property (weak, nonatomic) IBOutlet UIButton *loadBtn;
@property (weak, nonatomic) IBOutlet UIButton *hiddenLoadBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.successBtn addTarget:self action:@selector(showSuccessMessage) forControlEvents:UIControlEventTouchUpInside];
    
    [self.errorBtn addTarget:self action:@selector(showErrorMessage) forControlEvents:UIControlEventTouchUpInside];
    
    [self.loadBtn addTarget:self action:@selector(showLoadMessage) forControlEvents:UIControlEventTouchUpInside];
    
    [self.hiddenLoadBtn addTarget:self action:@selector(hiddenLoad) forControlEvents:UIControlEventTouchUpInside];
}
/**
 *  显示成功信息
 */
- (void)showSuccessMessage {
    [HLStatusBarHUD showSuccess:@"保存成功"];
    
}
/**
 *  显示失败信息
 */
- (void)showErrorMessage {
    [HLStatusBarHUD showError:@"保存失败"];
}

/**
 *  显示加载信息
 */
- (void)showLoadMessage {
    [HLStatusBarHUD showLoad:@"正在拼命加载中..."];
}

/**
 *  隐藏加载信息
 */
- (void)hiddenLoad {
    [HLStatusBarHUD hiddenLoad];
}
@end
