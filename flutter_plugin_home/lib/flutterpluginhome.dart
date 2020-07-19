import 'dart:async';

import 'package:flutter/services.dart';

export 'src/MHomePage.dart';
class Flutterpluginhome {
  static const MethodChannel _channel =
      const MethodChannel('flutterpluginhome');


  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
