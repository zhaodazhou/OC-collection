//
//  UIBarButtonItem+customView.m
//  Banksy
//
//  Created by 大洲 on 15/4/8.
//  Copyright (c) 2015年 大洲. All rights reserved.
//

#import "UIBarButtonItem+customView.h"

@implementation UIBarButtonItem (customView)

- (id)initWithImage:(UIImage *)image scale:(int)nScale title:(NSString*)strTitle target:(id)target action:(SEL)action tag:(int)nTag
{
    int nWidth = image.size.width/nScale;
    int nHeight = image.size.height/nScale;
    UIButton *customViewButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, nWidth, nHeight)];
    
    [customViewButton setBackgroundImage:image forState:UIControlStateNormal];
    [customViewButton setTitle:strTitle forState:UIControlStateNormal];
    customViewButton.tag = nTag;
    customViewButton.titleLabel.font = [UIFont systemFontOfSize:13];
    customViewButton.titleLabel.textColor = [UIColor colorWithRed:0xf2/255.0 green:0xf2/255.0 blue:0xf2/255.0 alpha:1.0];
    [customViewButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    if (!(self = [self initWithCustomView:customViewButton])) return nil;
    
    return self;
}

- (id)initWithLeftSubView:(UIView *)aSubView
{
    UIView *wView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 44)];
    CGRect wRect = aSubView.frame;
    wRect.origin.x = 10;
    wRect.origin.y = 10;
    aSubView.frame = wRect;
    [wView addSubview:aSubView];
    self = [self initWithCustomView:wView];

    if (self) {
    }
    return self;
}

- (id)initWithRightSubView:(UIView *)aSubView
{
    UIView *wView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
    CGRect wRect = aSubView.frame;
    wRect.origin.x = (44 - wRect.size.width)/2 +5;
    wRect.origin.y = (44 - wRect.size.height)/2;
    aSubView.frame = wRect;
    [wView addSubview:aSubView];
    self = [self initWithCustomView:wView];
    
    if (self) {
    }
    return self;
}

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
