
import 'dart:collection';

class DataHelp{

  static SplayTreeMap getBaseMap() {
    var map = new SplayTreeMap<String, dynamic>();
//    map["platform"] = AppConstants.PLATFORM;
//    map["system"] = AppConstants.SYSTEM;
//    map["channel"] = AppConstants.CHANNEL;
//    map["time"] = new DateTime.now().millisecondsSinceEpoch.toString();
    return map;
  }
  /// 加密
//  static string2MD5(String data) {
//    var content = new Utf8Encoder().convert(data);
//    var digest = md5.convert(content);
//    return hex.encode(digest.bytes);
//  }
}