
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpluginbase/common/UrlAddress.dart';
import 'package:flutterpluginhttp/flutterpluginhttp.dart';

/**
 * @Author: lxp
 * @Description:
 * @Date: 2020/7/18 12:37 PM
 */
abstract  class BaseWidget extends StatefulWidget{

  BaseState baseState;


  @override
  State<StatefulWidget> createState() {
    baseState = getState();
    return baseState;
  }

  BaseState getState();

}

abstract class BaseState<T extends BaseWidget> extends  State<BaseWidget>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: getAppbar(),
      body: getBody(),
    );
  }

  Widget getAppbar();

  Widget getBody();


  ///请求
  void post(String url,String tag){
      showProgress();
      HttpUtils.post(UrlAddress.sug, "",
          onSuccess: (code,msg,data){
            setState(() {
//              text =  json.encode(data);
              onSuccess(tag,code,msg,data);
            });
            Navigator.pop(context);

          },
          onError: (code,msg){
            setState(() {
              onError(code, msg);
            });
            Navigator.pop(context);
          });
  }
  /// 成功
  void onSuccess(tag,code,msg,data);

  /// 失败
  void onError(code,msg){

  }

  //弹窗
  void showProgress(){
    showDialog(context: context,barrierDismissible: false,
        builder: (_){
          return new NetLoadingDialog(
            outsideDismiss: false,
          );
        });
  }

}