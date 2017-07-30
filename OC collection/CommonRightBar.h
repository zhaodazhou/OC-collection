//
//  CommonRightBar.h
//  Banksy
//
//  Created by 大洲 on 15/4/14.
//  Copyright (c) 2015年 大洲. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommonRightBar : UIControl

@property (nonatomic,weak) id leftSender;
@property (nonatomic,weak) id rightSender;
@property (nonatomic,assign) SEL leftSel;
@property (nonatomic,assign) SEL rightSel;

- (void)setImages:(NSString *)leftImageName rImg:(NSString *)rightImageName;

@end
