//
//  RNIOSExportJsToReact.h
//  react-native-floatball
//
//  Created by JackLi on 2021/3/15.
//

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

#define RNIOSExportJsToReact(noti) [[NSNotificationCenter defaultCenter] postNotificationName:@"event-emitted" object:noti];

@interface RNIOSExportJsToReact : RCTEventEmitter<RCTBridgeModule>
@end
