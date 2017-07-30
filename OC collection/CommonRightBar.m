//
//  CommonRightBar.m
//  Banksy
//
//  Created by 大洲 on 15/4/14.
//  Copyright (c) 2015年 大洲. All rights reserved.
//

#import "CommonRightBar.h"
#import "UIControl+EnlargeTouchArea.h"
#import <objc/message.h>

@interface CommonRightBar()


@property (strong, nonatomic) UIView *innerBgView;
@property (nonatomic,strong) UIImage * refreshImage;
@property (nonatomic,strong) UIImage * searchImage;
@property (strong, nonatomic) UIImageView *refreshImgView;
@property (strong, nonatomic) UIImageView *searchImgView;


@end

@implementation CommonRightBar


- (void)layoutSubviews
{
    [super layoutSubviews];
    self.innerBgView.frame = CGRectMake(10, 0, self.innerBgView.bounds.size.width,  self.innerBgView.bounds.size.height);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = touches.anyObject;
    
    CGPoint p = [touch locationInView:self];
    NSLog(@"p %@",[NSValue valueWithCGPoint:p]);
    
    CGFloat sepPoint = 0.f;
    sepPoint = sepPoint;
    
    
    if (p.x < sepPoint)
    {
        objc_msgSend(self.leftSender, self.leftSel, self);
    }
    else if(p.x >= sepPoint)
    {
        objc_msgSend(self.rightSender, self.rightSel, self);
    }
    [super touchesEnded:touches withEvent:event];
}

- (void)setImages:(NSString *)leftImageName rImg:(NSString *)rightImageName
{
    if (leftImageName) {
        self.refreshImgView.image = [UIImage imageNamed:leftImageName];
    }
    if (rightImageName) {
        self.searchImgView.image = [UIImage imageNamed:rightImageName];
    }
    
    [self resetFrameWithImages:leftImageName rImg:rightImageName];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect rect = frame;
        rect.origin.x = rect.origin.y = 0;
        self.innerBgView = [[UIView alloc] initWithFrame:rect];
        [self addSubview:self.innerBgView];
        [self setEnlargeEdgeWithTop:0 right:13 bottom:0 left:45];
    }
    return self;
}

- (void)resetFrameWithImages:(NSString *)leftImageName rImg:(NSString *)rightImageName
{
    UIImage * image =  [UIImage imageNamed:leftImageName];
    
    self.refreshImage = image;
    self.refreshImgView = [[UIImageView alloc]initWithImage:image];
    
    [self.innerBgView addSubview:self.refreshImgView];
    
    self.refreshImgView.frame = CGRectMake(-self.refreshImage.size.width / 2 - 30,(self.innerBgView.frame.size.height - self.refreshImage.size.height / 2) / 2 - 1,
                                           20,
                                           20);
    
    
    UIImage * image1 = [UIImage imageNamed:rightImageName];
    self.searchImage = image1;
    self.searchImgView = [[UIImageView alloc]initWithImage:image1];
    
    [self.innerBgView addSubview:self.searchImgView];
    
    CGFloat xf = 0;
    if (self.searchImage.size.width / 2 < self.innerBgView.frame.size.width) {
        xf = self.innerBgView.frame.size.width - self.searchImage.size.width / 2 - 5;//防止图片过小
    }
    CGRect searchRect = CGRectMake(xf - 20,
                                   (self.innerBgView.frame.size.height - self.searchImage.size.height / 2) / 2 - 1,
                                   20,
                                   20);
    self.searchImgView.frame = searchRect;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
