import 'package:flutter/material.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';
import 'package:jsp_flutter/chinese/base/PageRouteTest.dart';
import 'package:jsp_flutter/chinese/base/EchoRoute.dart';

void main() => runApp(new MyApp());

/// 第一个demo，演示最简单的文本信息。
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //去掉debug 标记
      debugShowCheckedModeBanner: false,
      title: "Hello Flutter Again",
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo合集'),
        ),
        body: ListDemo(),
      ),
      routes: {
        "page_route": (context)=> PageRouteTest(),
        "echo_route": (context)=> EchoRoute(),
      },
    );
  }
}
