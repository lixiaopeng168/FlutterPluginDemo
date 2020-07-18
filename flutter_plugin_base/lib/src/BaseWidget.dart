import 'dart:html';

import 'package:flutter/cupertino.dart';

/**
 * @Author: lxp
 * @Description:
 * @Date: 2020/7/18 12:37 PM
 */
 class BaseWidget extends StatefulWidget{



  @override
  State<StatefulWidget> createState() {
    return BaseState();
  }
}

class BaseState extends  State<BaseWidget>{

  @override
  Widget build(BuildContext context) {
    return new Text("data");
  }
}