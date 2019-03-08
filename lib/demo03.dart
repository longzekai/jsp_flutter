import 'package:flutter/material.dart';

void main() => runApp(new MyApp()) ;

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home : new Scaffold(
          appBar: new AppBar(
            title:  Text("demo03"),
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
        ),
    ) ;
  }
}