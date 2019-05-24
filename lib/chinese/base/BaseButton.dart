import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button演示"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("RaisedButton"),
                  onPressed: () {},
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("FlatButton"),
                  color: Colors.grey,
                ),
                OutlineButton(
                  onPressed: () {},
                  child: Text('OutlineButton'),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.thumb_up),
                ),
                FlatButton(// 自定义实现
                  color: Colors.blue,
                  child: Text('Customize Button'),
                  colorBrightness: Brightness.dark,
                  highlightColor: Colors.blue[700],
                  onPressed: (){},
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                ),
              ],
            ),
          ),
          width: 300,
          height: 500,
          decoration: BoxDecoration(color: Colors.lightGreenAccent),
        ),
      )
    );
  }
}
