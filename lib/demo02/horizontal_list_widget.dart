import 'package:flutter/material.dart';
import 'package:jsp_flutter/demo02/split_list_view.dart';

class HorizontalList extends StatelessWidget {
  final String title;

  HorizontalList({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Container(height: 200.0, child: SplitListView()),
      ),
    );
  }
}
