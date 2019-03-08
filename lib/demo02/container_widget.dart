import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  final String title;

  ContainerDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: Text(
          "Hello Danny, You Are A Good Android Programer, Don't Give Up Never!",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.lightBlue,
            fontStyle: FontStyle.normal,
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        // set padding
        margin: const EdgeInsets.all(6.0),
        width: 500.0,
        height: 460.0,

        /// decoration 和 color 属性不能同时存在，否则会产生冲突
//          color: Colors.lightGreenAccent,
        decoration: new BoxDecoration(
            //RadialGradient 圆形渐变
            //LinearGradient 线性渐变
            //SweepGradient 雷达渐变
            gradient: const LinearGradient(
                colors: [Colors.red, Colors.lightBlue, Colors.purple]),
            //增加一个边框
            border: Border.all(
                color: Colors.yellow, width: 6.0, style: BorderStyle.solid)),
      ),
    );
  }
}
