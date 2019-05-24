import 'package:flutter/material.dart';

class BaseWidgets extends StatelessWidget {
  const BaseWidgets({
      Key key,
      @required this.text,
      this.backgroundColor: Colors.blue
  }) : super(key: key);

  final String text ;
  final Color backgroundColor ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础类演示"),
      ),
      body: Center(
        child: Container(
          color: backgroundColor,
          child: Text(this.text),
        ),
      ),
    );
  }
}
