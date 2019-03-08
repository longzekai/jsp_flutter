import 'package:flutter/material.dart';

class Demo0404 extends StatelessWidget {
  final String title;
  Demo0404({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Image.asset('images/test.jpg'),
      ),
    );
  }
}
