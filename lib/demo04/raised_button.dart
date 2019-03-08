import 'package:flutter/material.dart';
import 'SecondScreen.dart';

void main() => runApp(MaterialApp(
      title: '导航演示1',
      home: FirstScreen(),
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航演示1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('查看商品详情页面'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          },
        ),
      ),
    );
  }
}
