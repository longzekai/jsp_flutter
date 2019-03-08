import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  final String title;

  HelloWorld({Key key, this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
