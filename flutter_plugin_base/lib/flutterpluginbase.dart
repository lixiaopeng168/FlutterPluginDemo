import 'dart:async';

import 'package:flutter/services.dart';

export "package:event_bus/event_bus.dart";
export 'package:flutterpluginbase/easy_loading/flutter_easyloading.dart';


export 'model.dart';

export 'utils/EventBusUtil.dart';

export 'common/RoutesCommon.dart';

class Flutterpluginbase {
  static const MethodChannel _channel =
      const MethodChannel('flutterpluginbase');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
