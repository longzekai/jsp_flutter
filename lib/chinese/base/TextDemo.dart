import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本及样式"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(
              "textAlign: TextAlign.center",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "maxLines: 1, overflow: TextOverflow.ellipsis,"*3,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              "textScaleFactor: 1.5",
              style: TextStyle(fontSize: 20.0),
              textScaleFactor: 1.5,
            ),
            Text.rich(
              TextSpan(
                text: "TextSpan 演示 \n",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.lightGreen,
                  letterSpacing: 2.0
                ),
                children: [
                  TextSpan(
                    text: "Home ",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        letterSpacing: 1.0
                    ),
                  ),
                  TextSpan(
                    text: "https://flutterchina.club",
                    style: TextStyle(
                      color: Colors.blue
                    )
                  )
                ]
              )
            ),
            DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color:Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("文本默认样式演示-设置红色，20号字体"),
                  Text("我没有添加样式"),
                  Text("我不继承样式，改成灰色",
                    style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
