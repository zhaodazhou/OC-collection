//
//  UIControl+EnlargeTouchArea.h
//  Banksy
//
//  Created by 大洲 on 15/4/7.
//  Copyright (c) 2015年 大洲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (EnlargeTouchArea)

- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;

@end
