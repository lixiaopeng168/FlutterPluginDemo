import 'dart:async';

import 'package:flutter/material.dart';

import 'plugins_import.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

      routes: {
        "/login":(context) => LoginPage(),
        "/list":(context) => ListPage(),
        "/list_second":(context) => ListSecondPage("跳转到二级页面"),
      },
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  StreamSubscription<LoginEvent> sss;

  String _loginText= "信息";
  @override
  void initState() {
    sss = EventBusUtil.getInstance().on<LoginEvent>().listen((event) {
      print("回调 ${event.text}");
      setState(() {
        _loginText = event.text;
      });

      sss.cancel();
//      print('${event.test}');
    });
    super.initState();

  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    print("执行didUpdateWidget:");
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("$_loginText")
            ,
            RaisedButton(
              child: new Text("去登录插件"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushNamed(context, "/login");
              },
            ),
            RaisedButton(
              child: new Text("去列表插件"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushNamed(context, "/list");
              },
            ),
          ],
        ),
      )
    );
  }
}
