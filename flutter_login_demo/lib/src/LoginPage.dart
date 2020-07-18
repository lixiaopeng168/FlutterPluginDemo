import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpluginbase/easy_loading/flutter_easyloading.dart';
import 'package:flutterpluginbase/flutterpluginbase.dart';

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

  TextEditingController _controllerAccount;


  @override
  void initState() {
    _controllerAccount = new TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return    new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("登录"),
        leading: new InkWell(child: new Icon(Icons.arrow_back_ios),
          onTap: (){
            _back();

          },) ,

      ),
      body: new Center(
        child: new Column(
          children: [
            ///提示
            new Text("这个是登陆页面"),
            /// 输入框
            new TextField(
              decoration: new InputDecoration(
                hintText: "请输入用户名",
                hintStyle: new TextStyle(
                  fontSize: 20,
                  color: Colors.black26,
                ),
              ),
              controller: _controllerAccount,
            ),
            ///按钮
            new RaisedButton(
              onPressed: (){
                _checkLogin();
              },
              child: new Text("登录"),
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ],
        ) ,
      ),);
  }

  void _checkLogin(){
    print("内容:${_controllerAccount.text}   ${_controllerAccount.value}");
    EventBusUtil.getInstance().fire(new LoginEvent(_controllerAccount.text));
    _back();
//    EasyLoading.show(status: "登录中...");
//    Future.delayed(Duration(seconds: 2),(){
////      EasyLoading.dismiss();
//      //传值
////      EventBusUtil.getInstance().fire(new LoginEvent(_controllerAccount.text));
////      _back();
//
//    });
  }

  void _back(){
    print("登录返回");
    Navigator.pop(context);
  }
}