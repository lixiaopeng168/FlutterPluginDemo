
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterpluginbase/common/UrlAddress.dart';
import 'package:flutterpluginbase/flutterpluginbase.dart';

class MHomePage extends BaseWidget{
  @override
  BaseState<BaseWidget> getState()  => _MHomeState();
}

class _MHomeState  extends BaseState<MHomePage>{

  String text ;
  @override
  Widget getAppbar() {
    return new AppBar(
      title: new Text("插件首页MHome"),
    );
  }

  @override
  Widget getBody() {
    return new Center(
      child: new Column(
        children: [
          new RaisedButton(onPressed: (){
            _request();
          },
          child: new Text("点击请求"),),
          new Text(text ?? ""),
        ],
      ),
    );
  }

  void _request(){
    post(UrlAddress.sug, UrlAddress.sug);
  }
  @override
  void onSuccess(tag, code, msg, data) {
    text = json.encode(data);
  }
}