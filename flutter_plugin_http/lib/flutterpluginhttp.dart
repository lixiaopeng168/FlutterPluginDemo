import 'dart:async';

import 'package:flutter/services.dart';



export 'http_import.dart';
export 'src/DioDemo.dart';

class Flutterpluginhttp {
  static const MethodChannel _channel =
      const MethodChannel('flutterpluginhttp');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
