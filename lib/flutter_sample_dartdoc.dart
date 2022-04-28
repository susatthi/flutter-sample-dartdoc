import 'dart:async';

import 'package:flutter/services.dart';

/// クラスの説明の概要です。
///
/// ここに詳細を記載していきます。文章が長くなったらこんな感じに
/// 改行をしていくとよいです。1回の改行では改行になりません。
///
/// 2回改行をいれると改行になります。
class FlutterSampleDartdoc {
  static const MethodChannel _channel = MethodChannel('flutter_sample_dartdoc');

  /// メソッドの説明
  ///
  /// サンプルコードがあるとよいです。
  /// ```dart
  /// final version = await FlutterSampleDartdoc.platformVersion ?? 'Unknown platform version';
  /// ```
  ///
  /// [FlutterSampleDartdoc] のように [] をつけて強調表示するとうれしいです。
  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
