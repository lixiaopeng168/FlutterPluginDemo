import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * @Author: lxp
 * @Description:
 * @Date: 2020/7/18 3:00 PM
 */

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new WillPopScope(
        child: new Scaffold(
          appBar: new AppBar(
            leading: new InkWell(
              child: new Icon(Icons.arrow_back_ios),
              onTap: (){
                _back(context);
              },
            ) ,
            title: new Text(
              "列表",
              style: new TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new Text("这个是列表插件页"),
                new RaisedButton(onPressed: (){
                   Navigator.pushNamed(context, "/list_second");
                },
                  child: new Text("去列表二级页面"),

                ),
//                new ListView.builder(itemBuilder: (context,index){
//                  return ListTile(title: new Text("item:$index"),);
//                },
//                itemCount: 5,
//                itemExtent: 20,),
              ],
            ),
          ),
        ),
        onWillPop: () {
          return _back(context);
        });
  }

   Future<bool>  _back(BuildContext context) {
    print("点击了列表插件");
    Navigator.pop(context);
  }
}
