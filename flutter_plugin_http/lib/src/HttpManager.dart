

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutterpluginhttp/src/HttpState.dart';
import 'package:flutterpluginhttp/src/HttpUtils.dart';

import '../flutterpluginhttp.dart';

class HttpManager {
  static HttpManager _instance = HttpManager._internal();
  Dio _dio;

  factory HttpManager() => _instance;

  ///通用全局单例，第一次使用时初始化
  HttpManager._internal({String baseUrl}) {
    if (null == _dio) {
      _dio = new Dio(new BaseOptions(
          baseUrl: Address.baseUrl, connectTimeout: 15000));
//      _dio.interceptors.add(new LogsInterceptors());
//      _dio.interceptors.add(new ResponseInterceptors());
    }
  }

  static HttpManager getInstance({String baseUrl}) {
    if (baseUrl == null) {
      return _instance._normal();
    } else {
      return _instance._baseUrl(baseUrl);
    }
  }

  //用于指定特定域名，比如cdn和kline首次的http请求
  HttpManager _baseUrl(String baseUrl) {
    if (_dio != null) {
      _dio.options.baseUrl = baseUrl;
    }
    return this;
  }

  //一般请求，默认域名
  HttpManager _normal() {
    if (_dio != null) {
      if (_dio.options.baseUrl != Address.baseUrl) {
        _dio.options.baseUrl = Address.baseUrl;
      }
    }
    return this;
  }

  ///通用的GET请求
  get(url, params, {noTip = false}) async {
    Response response;
    try {
      response = await _dio.get(url, queryParameters: params);
    } on DioError catch (e) {
//      return resultError(e);
    }

    if (response.data is DioError) {
//      return resultError(response.data['code']);
    }

    return response.data;
  }
  ///通用的POST请求
 void  post(url, params, {onSuccess,onError}) async {
    Response response;

    try {
      response = await _dio.post(url, data: params);
      if(response.statusCode == HttpState.NET_CODE_SUCCESS){
        //成功
        var js = json.decode(response.toString());
        if(onSuccess != null) {
          onSuccess(0,"测试成功",js);
        }
        ///这里换成自己json的参数
//        if(js[HttpState.state] == HttpState.CODE_SUCCESS){
//          //成功
////          print("解析数据:${js[HttpState.state]}   ${js[HttpState.data]}  "
////              " 解析 notices ${js[HttpState.data]["notices"]} ");
//          if(onSuccess != null) {
//            onSuccess(js[HttpState.state], js[HttpState.message],js[HttpState.data]);
//          }
//        }else{
//          //失败
//          if(onError != null) {
//            onError(js[HttpState.state], js[HttpState.message]);
//          }
//        }
      }else{
        //失败
        if(onError != null) {
          onError(response.statusCode, "网络异常");
        }
      }

    } catch (e) {
      e.toString();
      if(onError != null) {
        onError(2, "网络异常");
      }
//      return resultError(e);
    }

    print("请求url:${_dio.options.baseUrl}$url");
    print("请求结果:${response.data}");

//    if (response.data is DioError) {
////      return resultError(response.data['code']);
//    }


  }
}