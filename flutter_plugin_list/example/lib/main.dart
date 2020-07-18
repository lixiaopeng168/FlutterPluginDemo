import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_list_second/flutter_list_second.dart';
import 'package:flutterpluginlist/flutterpluginlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
//        "/list_second":(context) => ListP("跳转到二级页面"),
        "/list_second":(context) => ListSecondPage("跳转到二级页面"),
      },
      home: Scaffold(

        body: Center(
          child: new ListPage(),
        ),
      ),
    );
  }
}
