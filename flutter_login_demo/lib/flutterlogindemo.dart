import 'dart:async';

import 'package:flutter/services.dart';

export 'src/LoginPage.dart';

class Flutterlogindemo {
  static const MethodChannel _channel =
      const MethodChannel('flutterlogindemo');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
