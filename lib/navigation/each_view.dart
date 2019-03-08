import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  final String _title;
  EachView(this._title);

  @override
  State createState() {
    return _EachViewState();
  }
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
