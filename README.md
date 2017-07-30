# OC-collection

Objective-C 作为苹果开发者的语言，经历了兴盛了，逐渐的在被 Swift 取代中，为了纪念一下它（不知道算太早还是太晚），打算把平时积累下来的一些东西给记录在这里，以此纪念 OC ！


1:MBProgressHUD文件夹中，是对MBProgressHUD在UIView的category技术处理，使得使用MBProgressHUD非常方便，比如：
显示菊花：[self.view showProgress]; 移除菊花：[self.view removeProgress];
完全可以扩充这个category类，实现项目中常用的一些功能函数。

2:EnlargeTouchArea文件夹中，是对UIControl的category，该功能可以对一个UIbutton的点击范围进行扩大，在不想改变按钮大小的情况下。
调用方式： [someButton setEnlargeEdgeWithTop:10 right:10 bottom:10 left:10];
该功能为扩大someButton的上右下左的点击范围分别扩大10个点。


3:UIColor文件夹中，是对UIcolor的封装使用，在使用颜色值设置时，可以简单的使用 ColorString(@"#101010"); 或者 ColorStringAlpha(@"0101011");

4:UIBarButtonItem+customView是UIBarButtonItem的category，创建的一个UIBarButtonItem上有2个button，可以调整二者之间的间距等属性，方便定制；
