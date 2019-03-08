import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
            backgroundImage: NetworkImage(
                'http://jspang.com/static//myimg/blogtouxiang.jpg'),
            radius: 100),
//        Container(
//          decoration: BoxDecoration(
//            color: Colors.lightBlue,
//          ),
//          padding: EdgeInsets.all(5.0),
//          child: Text('I am Danny'),
//        )
        Positioned(child: Text('JSPang.com'), top: 10.0, left: 10.0),
        Positioned(
          child: Text('技术胖'),
          bottom: 10.0,
          right: 10.0,
        )
      ],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Demo'),
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
