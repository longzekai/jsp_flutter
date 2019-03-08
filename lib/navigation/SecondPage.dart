import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          'ScondPage',
          style: TextStyle(fontSize: 36.0),
        ),
        leading: Container(),
        elevation: 4.0, //这个值是AppBar 滚动时的融合程度，是否有阴影高度
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}
