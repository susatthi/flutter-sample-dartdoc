#import "FlutterSampleDartdocPlugin.h"
#if __has_include(<flutter_sample_dartdoc/flutter_sample_dartdoc-Swift.h>)
#import <flutter_sample_dartdoc/flutter_sample_dartdoc-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_sample_dartdoc-Swift.h"
#endif

@implementation FlutterSampleDartdocPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSampleDartdocPlugin registerWithRegistrar:registrar];
}
@end
