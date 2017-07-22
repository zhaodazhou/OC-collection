

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"

typedef void (^hud_block)(MBProgressHUD * hud);

@interface UIView (MBProgress)

- (void)showProgress;

- (void)showProgress:(bool)userInteractiion;

- (void)showProgress:(NSString *)message userInteractiion:(bool)userInteractiion delay:(float)seconds;

- (void)showProgress:(NSString *)message userInteractiion:(bool)userInteractiion;
- (void)showProgressMessage:(NSString *)message;
- (void)showProgressOnlyLabel:(NSString *)message delay:(float)seconds;

- (void)showProgressOnlyLabel:(NSString *)message;

- (void)showProgressWithBlock:(hud_block)block;

- (void)removeProgress;
- (void)removeProgressImmediately;
@end
