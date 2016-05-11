# BasicGraphics
iOS基本图形绘制, 包括: 线, 弧线, 三角形, 椭圆, 矩形, 圆角矩形, 贝塞尔曲线等. 效果如下图:  
![wf9](http://7xtauc.com2.z0.glb.clouddn.com/wf9.png)

---
### UIBezierPath  
官方参考: [UIBezierPath](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIBezierPath_class/)  
工程参考: [[iPhone] UIBezierPath 図形の描画 (Objective-C)](https://akira-watson.com/iphone/uibezierpath_objective-c.html)  
可以创建的UIBezierPath对象有:  
```
+ bezierPath
+ bezierPathWithRect:
+ bezierPathWithOvalInRect:
+ bezierPathWithRoundedRect:cornerRadius:
+ bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:
+ bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:
+ bezierPathWithCGPath:
- bezierPathByReversingPath   
```  

---
### CoreGraphics
这是另一种更加底层的绘制方法.  

---

### 深色背景下设置标题栏为白色
背景色为黑色, 需设置状态栏(显示信号, 时间, 电量等)为亮色, 有两种方法:  
1. Info.plist添加View controller-based status bar appearance, 设置value为NO. 添加    
```
[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];  
```  

2. ViewController.m中实现 - (UIStatusBarStyle) preferredStatusBarStyle 方法     

```
- (UIStatusBarStyle) preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
```   

并且在ViewController.m中调用此方法.  
```
[self preferredStatusBarStyle];
```
(注意删掉Info.plist中的View controller-based status bar appearance项)
