

#import "UIView+MBProgress.h"

@implementation UIView (MBProgress)

- (void)showProgress
{
    [self showProgress:@"请稍候..." userInteractiion:YES];
}

- (void)showProgress:(bool)userInteractiion
{
    [self showProgress:@"请稍候..." userInteractiion:userInteractiion];
}

- (void)showProgress:(NSString *)message userInteractiion:(bool)userInteractiion delay:(float)seconds
{
    MBProgressHUD * hub = [MBProgressHUD HUDForView:self];
    if (!hub) {
        hub = [[MBProgressHUD alloc]initWithView:self];
    }
    hub.label.text = message;
    hub.removeFromSuperViewOnHide = YES;
    [hub hideAnimated:YES afterDelay:seconds];
    hub.userInteractionEnabled = !userInteractiion;
    [self addSubview:hub];
    [hub showAnimated:YES];
}

- (void)showProgress:(NSString *)message userInteractiion:(bool)userInteractiion delay:(float)seconds delegate:(id<MBProgressHUDDelegate>)delegate tag:(int)tag
{
    MBProgressHUD * hub = [MBProgressHUD HUDForView:self];
    if (!hub) {
        hub = [[MBProgressHUD alloc]initWithView:self];
    }
    hub.tag = tag;
    hub.label.text = message;
    hub.delegate = delegate;
    hub.removeFromSuperViewOnHide = YES;
    [hub hideAnimated:YES afterDelay:seconds];
    hub.userInteractionEnabled = !userInteractiion;
    [self addSubview:hub];
    [hub showAnimated:YES];
}

- (void)showProgressMessage:(NSString *)message
{
    [self showProgress:message userInteractiion:NO];
}

- (void)showProgress:(NSString *)message userInteractiion:(bool)userInteractiion
{
    [self showProgress:message userInteractiion:userInteractiion delay:UINT32_MAX];
}

- (void)showProgressOnlyLabel:(NSString *)message
{
    [self showProgressOnlyLabel:message delay:3.0f];
}


- (void)showProgressOnlyLabel:(NSString *)message delay:(float)seconds
{
    MBProgressHUD * hub = [MBProgressHUD HUDForView:self];
    if (!hub) {
        hub = [[MBProgressHUD alloc]initWithView:self];
    }
    hub.label.text = message;
    hub.mode = MBProgressHUDModeText;
    hub.margin = 15;
    hub.removeFromSuperViewOnHide = YES;
    [hub hideAnimated:YES afterDelay:seconds];
    hub.userInteractionEnabled = false;
    [self addSubview:hub];
    [hub showAnimated:true];
}

- (void)showProgressWithBlock:(hud_block)block
{
    MBProgressHUD * hud = [MBProgressHUD HUDForView:self];
    if (!hud) {
        hud = [[MBProgressHUD alloc]initWithView:self];
    }
    block(hud);
    hud.removeFromSuperViewOnHide = YES;
    [self addSubview:hud];
    [hud showAnimated:true];
}

- (void)removeProgress
{
    [MBProgressHUD hideHUDForView:self animated:YES];
}

- (void)removeProgressImmediately
{
    [MBProgressHUD hideAllHUDsForView:self animated:NO];
}

- (void)removeProgressDelegate
{
    for (MBProgressHUD * hud in [MBProgressHUD allHUDsForView:self])
    {
        hud.delegate = nil;
    }
}
@end
