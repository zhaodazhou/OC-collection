//
//  UIBarButtonItem+customView.m
//  Banksy
//
//  Created by 大洲 on 15/4/8.
//  Copyright (c) 2015年 大洲. All rights reserved.
//

#import "UIBarButtonItem+customView.h"

@implementation UIBarButtonItem (customView)

- (UIBarButtonItem *)createRightCommonBarItem:(NSString *)leftImageName rImg:(NSString *)rightImageName lSender:(id)lSender lSel:(SEL)leftSel rSender:(id)rSender rSel:(SEL)rightSel
{
    CommonRightBar * btn = [[CommonRightBar alloc] initWithFrame:CGRectMake(0, 0, 35, 44)];
    [btn setImages:leftImageName rImg:rightImageName];
    if (lSender) {
        btn.leftSender = lSender;
        btn.leftSel = leftSel;
    } else {
        btn.leftSender = nil;
        btn.leftSel = nil;
    }
    
    if (rSender) {
        btn.rightSender = rSender;
        btn.rightSel = rightSel;
    } else {
        btn.rightSender = nil;
        btn.rightSel = nil;
    }
    
    UIBarButtonItem * item =  [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    return item;
}

@end
