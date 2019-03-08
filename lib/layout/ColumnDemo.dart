import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('垂直方向布局'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              // 实现水平居中 和 crossAxisAlignment 有联动关系
              child: Text('I am Danny01'),
            ),
            Expanded(
              // 垂直方向上占满屏幕
              child: Center(
                child: Text('I am Danny02'),
              ),
            ),
            Text('I am Danny03'),
            Text('I am Danny04')
          ],
        ),
      ),
    );
  }
}
