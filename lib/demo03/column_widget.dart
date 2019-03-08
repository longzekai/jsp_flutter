import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  final String title;
  ColumnDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
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
    );
  }
}
