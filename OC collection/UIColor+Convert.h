

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIColorModel.h"

#define ColorString(s) [UIColor colorWithHexString:s withAlpha:1]
#define ColorStringAlpha(s,i) [UIColor colorWithHexString:s withAlpha:i]

@interface UIColor(Convert)

+ (UIColor *)colorWithHexString:(NSString *)color withAlpha:(CGFloat)alpha;
+ (UIColorModel *)rgbWithHexString:(NSString *)color withAlpha:(CGFloat)alpha;

@end
