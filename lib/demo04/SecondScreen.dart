import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('技术胖商品详情页'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Return'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
