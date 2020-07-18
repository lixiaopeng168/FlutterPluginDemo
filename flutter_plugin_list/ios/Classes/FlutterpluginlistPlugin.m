#import "FlutterpluginlistPlugin.h"
#if __has_include(<flutterpluginlist/flutterpluginlist-Swift.h>)
#import <flutterpluginlist/flutterpluginlist-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutterpluginlist-Swift.h"
#endif

@implementation FlutterpluginlistPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterpluginlistPlugin registerWithRegistrar:registrar];
}
@end
