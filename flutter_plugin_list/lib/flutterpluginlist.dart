import 'dart:async';

import 'package:flutter/services.dart';


export 'src/ListPage.dart';

class Flutterpluginlist {
  static const MethodChannel _channel =
      const MethodChannel('flutterpluginlist');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
