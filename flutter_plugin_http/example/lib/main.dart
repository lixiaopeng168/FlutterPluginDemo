import 'package:flutter/material.dart';
import 'package:flutterpluginhttp/flutterpluginhttp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('http测试'),
        ),
        body: new DioDemo(),
//        body: new Column(
//          children: [
//            new RaisedButton(onPressed: (){
//              print("发起请求 :");
//              DioUtils.requestHttp(Address.sug, onSuccess: (int code, String json, String message) {
//                print("请求的data: 回调成功 :$json");
//              }, onError: (int code, String message) {
//                print("请求的data: 回调失败 :$code");
//              });
//            },
//            child: new Text("发起http请求"),
//            )
//          ],
//
//        ),
      ),
    );
  }
}
