#import "FlutterListSecondPlugin.h"
#if __has_include(<flutter_list_second/flutter_list_second-Swift.h>)
#import <flutter_list_second/flutter_list_second-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_list_second-Swift.h"
#endif

@implementation FlutterListSecondPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterListSecondPlugin registerWithRegistrar:registrar];
}
@end
