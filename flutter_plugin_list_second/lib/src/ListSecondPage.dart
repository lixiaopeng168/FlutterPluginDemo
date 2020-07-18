import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * @Author: lxp
 * @Description:
 * @Date: 2020/7/18 3:54 PM
 */
class ListSecondPage extends StatelessWidget{
  String text;
  ListSecondPage(this. text){}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new InkWell(
          child: new Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
        ) ,
        title: new Text("列表二级页面"),
      ),
      body: new Center(
        child: new Text("列表二级页面:$text"),
      ),
    );
  }
}