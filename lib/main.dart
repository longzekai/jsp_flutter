import 'package:flutter/material.dart';

void main() => runApp(new MyApp()) ;

/// 第一个demo，演示最简单的文本信息。
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "Hello Flutter Again",
       home: new Scaffold(
         body: Center(
           child:Text(
             'Hello Danny test flutter and android ,ios , kotlin, swift, python, java',
             textAlign: TextAlign.justify,
             style: TextStyle(
               fontSize: 20.0,
               color: Colors.lightBlue,
               decoration: TextDecoration.overline,
               decorationStyle: TextDecorationStyle.dashed
             ),
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
           ),
         ),
       ),
    );
  }

}