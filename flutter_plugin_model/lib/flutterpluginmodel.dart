import 'dart:async';

import 'package:flutter/services.dart';

class Flutterpluginmodel {
  static const MethodChannel _channel =
      const MethodChannel('flutterpluginmodel');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
