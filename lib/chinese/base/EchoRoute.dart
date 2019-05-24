import 'package:flutter/material.dart';
class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments ;
    return Scaffold(
      appBar: AppBar(
        title: Text("采用路由表的方式传参"),
      ),
      body: Center(
        child: Text("采用路由表的方式 传参：$args"),
      ),
    );
  }
}

