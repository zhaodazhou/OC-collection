//
//  UIBarButtonItem+customView.h
//  Banksy
//
//  Created by 大洲 on 15/4/8.
//  Copyright (c) 2015年 大洲. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonRightBar.h"

@interface UIBarButtonItem (customView)

- (UIBarButtonItem *)createRightCommonBarItem:(NSString *)leftImageName rImg:(NSString *)rightImageName lSender:(id)lSender lSel:(SEL)leftSel rSender:(id)rSender rSel:(SEL)rightSel;

@end
