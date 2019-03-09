import 'package:flutter/material.dart';
import 'package:jsp_flutter/higherUI/jj_demo01_child.dart';

class JJDemo01 extends StatefulWidget {
  final String title;

  JJDemo01({Key key, this.title}) : super(key: key);

  _JJDemo01State createState() => _JJDemo01State(this.title);
}

class _JJDemo01State extends State<JJDemo01> {
  final String title;
  _JJDemo01State(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return JJDemo01Child();
        },
      ),
    );
  }
}
