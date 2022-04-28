
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSampleDartdoc {
  static const MethodChannel _channel = MethodChannel('flutter_sample_dartdoc');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
