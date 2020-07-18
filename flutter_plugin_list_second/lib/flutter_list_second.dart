import 'dart:async';

import 'package:flutter/services.dart';

export 'src/ListSecondPage.dart';

class FlutterListSecond {
  static const MethodChannel _channel =
      const MethodChannel('flutter_list_second');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
