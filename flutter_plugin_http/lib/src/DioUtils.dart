

import 'package:dio/dio.dart';
import 'package:flutterpluginhttp/src/Address.dart';
import 'package:flutterpluginhttp/src/listener/OnCallBack.dart';

class DioUtils{

  static Dio dio;


  //创建实例对象

  static Dio createDio(){
     if(dio == null){
       /// 全局属性：请求前缀、连接超时时间、响应超时时间
       var options = BaseOptions(
           connectTimeout: 150000,
           receiveTimeout: 150000,
           responseType: ResponseType.json,
           validateStatus: (status) {
             // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
             return true;
           },
           baseUrl: Address.baseUrl,
           headers: httpHeaders);
       dio = new Dio(options);
     }
     return dio;
  }

  static void post<T>(
      String url,{
      params,
      OnCallBack onCallBack
      }) async{

    ///定义请求参数
    params = params ?? {};

    try{
      Dio dio = createDio();
      Response response = await dio.post(url,queryParameters: params) ;
      var data = response.data;

    }catch(e){
      e.toString();
    }
  }

}

/// 自定义Header
Map<String, dynamic> httpHeaders = {
  'Accept': 'application/json,*/*',
  'Content-Type': 'application/json',
//  'token': DioUtils.TOKEN
};