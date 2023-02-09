#import "HippoWebRtcPlugin.h"
#if __has_include(<hippo_web_rtc/hippo_web_rtc-Swift.h>)
#import <hippo_web_rtc/hippo_web_rtc-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hippo_web_rtc-Swift.h"
#endif

@implementation HippoWebRtcPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHippoWebRtcPlugin registerWithRegistrar:registrar];
}
@end
