import 'package:flutter/cupertino.dart';
import 'package:flutterpluginhttp/src/HttpManager.dart';


typedef onSuccess = Future Function(int code, String message,dynamic data);
typedef onError = Future Function(int code, String message);

class HttpUtils {


  static post(String url, params, {onSuccess, onError}) {

    HttpManager.getInstance().post(url, params,
        onSuccess: ( code,  message,  data){
            if(onSuccess != null){
              print("texxt02 :$data");
              onSuccess(code,message,data);
            }
        },
        onError: ( code,  message) {
            if(onError != null){
              onError(code,message);
            }
        },
        );
//   print("\n请求结果5:$d");
//    var b = new BaseParams();
//    b.noSuchMethod(b.runtimeType);
  }
}