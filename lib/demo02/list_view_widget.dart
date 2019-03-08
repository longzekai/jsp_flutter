import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  final String title;
  ListViewDemo({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
//          children: <Widget>[
//            new ListTile(
//              leading: Icon(Icons.accessibility),
//              title: new Text('Danny'),
//            ),
//            new ListTile(
//              leading: Icon(Icons.account_box),
//              title: new Text('contact pepole'),
//            )
//          ],
        children: <Widget>[
          new Image.network(
              'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
          new Image.network(
              'http://jspang.com/static/upload/20190102/9SpnvSzav06JfPUrVtc1hNu9.jpg'),
          new Image.network(
              'http://jspang.com/static/myimg/typescript_banner.jpg'),
          new Image.network('http://jspang.com/static/myimg/smile-vue.jpg')
        ],
      ),
    );
  }
}
