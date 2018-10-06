# OC-collection


# OC-collection
## 1. 如何在release模式下进行真机调试？
1：编辑工程的scheme模式，将【Run】模式下的【Build Configuration】选项设置为Release模式；
2：设置工程的【Build Settings】，将【Code Signing Identity】与【Provisioning Profile】的Release的设置为相应的开发者cer和pro证书。

这个，就能在release模式下进行真机调试，毕竟有些问题在debug模式下是不复现的，而在release模式下却必现（比如对象的延迟释放问题）。

## 2. EnlargeTouchArea
利用事件传递原理。可以将一个button的事件响应的范围扩大，而不用扩大button的bound。
对UIControl进行category，添加方法
-` (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left`
在函数中，通过关联对象技术，将参数存储下来；
实现如下系统函数
`- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent*)event`
首先判断是否有扩大点击区域的范围；
然后判断点击的点是否包含在扩大的区域内。

## 3. MBProgressHUD
对MBProgressHUD中对UIView的category技术处理，使得使用MBProgressHUD非常方便，比如：
显示菊花：
`[self.view showProgress]; `
移除菊花：
`[self.view removeProgress];`
完全可以扩充这个category类，实现项目中常用的一些功能函数。



