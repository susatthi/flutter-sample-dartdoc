import Flutter
import UIKit

public class SwiftFlutterSampleDartdocPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_sample_dartdoc", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterSampleDartdocPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
