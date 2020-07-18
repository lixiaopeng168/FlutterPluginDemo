#import "FlutterpluginmodelPlugin.h"
#if __has_include(<flutterpluginmodel/flutterpluginmodel-Swift.h>)
#import <flutterpluginmodel/flutterpluginmodel-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutterpluginmodel-Swift.h"
#endif

@implementation FlutterpluginmodelPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterpluginmodelPlugin registerWithRegistrar:registrar];
}
@end
