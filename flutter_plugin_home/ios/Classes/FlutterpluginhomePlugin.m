#import "FlutterpluginhomePlugin.h"
#if __has_include(<flutterpluginhome/flutterpluginhome-Swift.h>)
#import <flutterpluginhome/flutterpluginhome-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutterpluginhome-Swift.h"
#endif

@implementation FlutterpluginhomePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterpluginhomePlugin registerWithRegistrar:registrar];
}
@end
