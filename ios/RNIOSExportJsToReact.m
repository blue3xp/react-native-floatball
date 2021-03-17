//
//  FloatballEventManager.m
//  react-native-floatball
//
//  Created by JackLi on 2021/3/15.
//

#import "RNIOSExportJsToReact.h"

@implementation RNIOSExportJsToReact
{
  bool hasListeners;
}

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents {
    return @[@"SpotifyHelper"]; //这里返回的将是你要发送的消息名的数组。
}
- (void)startObserving
{
    hasListeners = YES;
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(emitEventInternal:)
                                                 name:@"event-emitted"
                                               object:nil];
}
- (void)stopObserving
{
    hasListeners = NO;
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)emitEventInternal:(NSNotification *)notification
{
    if (hasListeners) {
        [self sendEventWithName:@"SpotifyHelper"
                           body:notification.object];
    }
}

+ (void)emitEventWithName:(NSString *)name andPayload:(NSDictionary *)payload
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"event-emitted"
                                                        object:self
                                                      userInfo:payload];
}

@end

