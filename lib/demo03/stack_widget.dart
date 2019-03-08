import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  final String title;
  StackDemo({Key key, this.title}) : super(key: key);
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

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}
