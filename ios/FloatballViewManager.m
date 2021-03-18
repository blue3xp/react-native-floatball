#import <React/RCTViewManager.h>
#import "MISFloatingBall.h"
#import "RNIOSExportJsToReact.h"
@interface FloatballViewManager : RCTViewManager
@end

@implementation FloatballViewManager

RCT_EXPORT_MODULE(FloatballView)

- (UIView *)view
{
    MISFloatingBall *floating = [[MISFloatingBall alloc] initWithFrame:CGRectMake(100, 100, 60, 60)];
    // 自动靠边
    floating.autoCloseEdge = YES;
    floating.clickHandler = ^(MISFloatingBall * _Nonnull floatingBall) {
//            RNIOSExportJsToReact(@{});
        if (floatingBall.onPress) {
            floatingBall.onPress(@{});
        }
        
    };
    return floating;
}

RCT_CUSTOM_VIEW_PROPERTY(url, NSString, MISFloatingBall)
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURL   *imgURL  = [NSURL URLWithString:json];
        NSData  *imgData = [NSData dataWithContentsOfURL:imgURL];
        UIImage *img     = [UIImage imageWithData:imgData];

                dispatch_async(dispatch_get_main_queue(), ^{
                    [view setContent:img contentType:MISFloatingBallContentTypeImage];
                });
            });
}

RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock);


RCT_CUSTOM_VIEW_PROPERTY(isShow, BOOL, MISFloatingBall)
{
    BOOL flag = [RCTConvert BOOL:json];
    NSLog(@"flag:%d",flag);
    if(flag){
        [view show];

    }
    else{
        [view hide];
    }
}




@end
