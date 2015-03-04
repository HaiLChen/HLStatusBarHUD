# HLStatusBarHUD
<<<<<<< Updated upstream
---
`HLStatusBarHUD`是一个方便又实用的状态栏指示器

##一、说明
---
* `HLStatusBarHUD`是一个轻量级框架，对代码没有任何污染.

* HLStatusBarHUD1.0版本版本有以下功能：
    * `显示成功信息`
    * `显示失败信息`
    * `显示加载信息`
    * `隐藏加载信息`

##二、如何使用
---
* 将HLStatusBarHUD文件夹下面的所有文件添加到项目中即可.

* 导入头文件：`#import "HLStatusBarHUD.h"`

##三、API使用示例
---
=======
`HLStatusBarHUD`是一个方便又实用的状态栏指示器

##一、说明
1. `HLStatusBarHUD`是一个轻量级框架，对代码没有任何污染.

2. HLStatusBarHUD1.0版本版本有以下功能：
* 显示成功信息
* 显示失败信息
* 显示加载信息
* 隐藏加载信息

##二、如何使用
1. 将HLStatusBarHUD文件夹下面的所有文件添加到项目中即可.

2. 导入头文件：`#import "HLStatusBarHUD.h"`

##三、API使用示例
>>>>>>> Stashed changes
</br>
* 显示成功信息
```objc
[HLStatusBarHUD showSuccess:@"保存成功"];
```
</br>
* 显示失败信息
```objc
[HLStatusBarHUD showError:@"保存失败"];
```
</br>
* 显示加载信息
```objc
[HLStatusBarHUD showLoad:@"正在拼命加载中..."];
```
</br>
* 隐藏加载信息
```objc
[HLStatusBarHUD hiddenLoad];
<<<<<<< Updated upstream
```
</br>
* 显示自定义状态栏
* 可以自己设置文字和图片（仅限本地图片）
```objc
+ (void)showStatusBar:(NSString *)message image:(UIImage *)image;
```

=======
```
>>>>>>> Stashed changes
