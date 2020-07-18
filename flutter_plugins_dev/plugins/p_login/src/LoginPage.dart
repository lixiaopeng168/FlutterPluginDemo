import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * @Author: lxp
 * @Description:
 * @Date: 2020/7/18 10:39 AM
 */

class LoginPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginPage>{

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.blue,
            title: new Text("登录"),
            leading: new InkWell(child: new Icon(Icons.arrow_back_ios),
            onTap: (){
              _back();
              Navigator.pop(context);
            },) ,

          ),
          body: new Center(
            child: new Text("这个是登陆页面"),
          ),);

  }

  void _back(){
    print("登录页面返回");
  }
}