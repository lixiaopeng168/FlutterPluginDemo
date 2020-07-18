#import "FlutterpluginbasePlugin.h"
#if __has_include(<flutterpluginbase/flutterpluginbase-Swift.h>)
#import <flutterpluginbase/flutterpluginbase-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutterpluginbase-Swift.h"
#endif

@implementation FlutterpluginbasePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterpluginbasePlugin registerWithRegistrar:registrar];
}
@end
