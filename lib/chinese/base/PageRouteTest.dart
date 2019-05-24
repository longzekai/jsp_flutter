import 'package:flutter/material.dart';

class PageRouteTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由跳转测试"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "我是路由器跳转测试界面。",
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
