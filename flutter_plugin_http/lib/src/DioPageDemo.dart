
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DioPageDemo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new DioState();
  }
}

class DioState extends State<DioPageDemo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("网络请求测试"),
      ),
      body: new Center(
        child: new Column(
          children: [

          ],
        ),
      ),
    );
  }
}