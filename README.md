# OC-collection


1:MBProgressHUD文件夹中，是对MBProgressHUD在UIView的category技术处理，使得使用MBProgressHUD非常方便，比如：
显示菊花：[self.view showProgress]; 移除菊花：[self.view removeProgress];
完全可以扩充这个category类，实现项目中常用的一些功能函数。

2:EnlargeTouchArea文件夹中，是对UIControl的category，该功能可以对一个UIbutton的点击范围进行扩大，在不想改变按钮大小的情况下。
调用方式： [someButton setEnlargeEdgeWithTop:10 right:10 bottom:10 left:10];
该功能为扩大someButton的上右下左的点击范围分别扩大10个点。


# 如何在release模式下进行真机调试？
1：编辑工程的scheme模式，将【Run】模式下的【Build Configuration】选项设置为Release模式；
2：设置工程的【Build Settings】，将【Code Signing Identity】与【Provisioning Profile】的Release的设置为相应的开发者cer和pro证书。

这个，就能在release模式下进行真机调试，毕竟有些问题在debug模式下是不复现的，而在release模式下却必现（比如对象的延迟释放问题）。
