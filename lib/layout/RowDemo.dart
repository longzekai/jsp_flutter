import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平方向布局'),
        ),
        body: Row(
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('红色按钮'),
            ),
            Expanded(
              // 灵活布局，可实现自动填充
              child: RaisedButton(
                onPressed: () {},
                color: Colors.yellowAccent,
                child: Text('黄色按钮'),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.pinkAccent,
              child: Text('粉色按钮'),
            )
          ],
        ),
      ),
    );
  }
}
