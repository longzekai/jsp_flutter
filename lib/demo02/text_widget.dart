import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  TextWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//    return MaterialApp( // 使用 MaterialApp 不会有返回箭头
    return new Scaffold(
      //会有返回箭头
      appBar: new AppBar(
        title: new Text(this.title),
      ),
//          body: Center(
//            child: Text('Hello Mroining'
// ,style: TextStyle(fontSize: 20.0, color: Colors.lightBlue,fontStyle: FontStyle.italic)),
//          ),
      body: Center(
        child: Text(
          'Hello Danny test flutter and android ,ios , kotlin, swift, python, java',
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.lightBlue,
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
//      ),
    );
  }
}
