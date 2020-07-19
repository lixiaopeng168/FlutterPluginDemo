
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpluginhttp/src/HttpManager.dart';
import 'package:flutterpluginhttp/src/dialog/NetLoadingDialog.dart';
import 'package:flutterpluginhttp/src/dialog/ProgressDialog.dart';

import '../flutterpluginhttp.dart';
import 'HttpUtils.dart';

class DioDemo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DioState();
  }
}

class DioState extends State<DioDemo>{

  bool _loading = false;

  String text;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new Center(
          child: new Column(
            children: [
              new RaisedButton(onPressed: (){
                print("发起请求 :");
//                _request02();
//              _request03();
//             _request();
              _request04();
              },child: new Text("发起请求"),),


              Text(text ?? "" ),

//              new RaisedButton(onPressed: (){
//                Fluttertoast.showToast(msg: "toast"
//            ,toastLength: Toast.LENGTH_SHORT,
//                gravity: ToastGravity.CENTER,
//                timeInSecForIos: 1,
//                backgroundColor: Colors.black54,
//                textColor: Colors.white);
//              },child: new Text("点击toast"),),
            ],


          ),

//        child: new ProgressDialog(
//          loading: _loading,
//          child: new Column(
//            children: [
//              new RaisedButton(onPressed: (){
//                print("发起请求 :");
////                _request02();
////              _request03();
////             _request();
//              },child: new Text("发起请求"),),
//            ],
//          ),)

    );
  }

  void _request04(){
    showDialog(context: context,barrierDismissible: false,
    builder: (_){
      return new NetLoadingDialog(
        outsideDismiss: false,
//        requestCallBack: _request03(),
      );
    });

    HttpUtils.post(Address.sug, "",
        onSuccess: (code,msg,data){
          setState(() {
            text =  json.encode(data);
          });
          Navigator.pop(context);

        },
        onError: (code,msg){
          Navigator.pop(context);
        });
  }

  void _request03(){
//    HttpManager.getInstance().post(Address.sug, "");
    HttpUtils.post(Address.sug, "",
        onSuccess: (code,msg,data){
          setState(() {
            _loading = false;
          });
        },
        onError: (code,msg){
          setState(() {
            _loading = false;
          });
        });
  }
  void _request02() async{
    setState(() {
      _loading = !_loading;
    });
    await Future.delayed(Duration(seconds: 2),(){
      HttpUtils.post(Address.sug, "",
          onSuccess: (code,msg,data){
            setState(() {
              _loading = !_loading;
            });
          },
          onError: (code,msg){
            setState(() {
              _loading = !_loading;
            });
          });
    });
  }



  void _request() async{
    Dio dio = new Dio();
    String url = Address.baseUrl+Address.sug;
    Response response =  await dio.get(url);
    print("datas:${response.data}");
  }
}