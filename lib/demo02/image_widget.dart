import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  final String title;

  ImageDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("demo03"),
      ),
      body: Center(
        child: Container(
          child: new Image.network(
            'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
//                fit: BoxFit.contain,
            width: 100.0,
            height: 200.0,
//设置这个属性，宽高将不起作用。
//                fit: BoxFit.fitHeight,
          ),
          width: 300.0,
          height: 400.0,
          color: Colors.lightGreenAccent,
        ),
      ),
    );
  }
}
