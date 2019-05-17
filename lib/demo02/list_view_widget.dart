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
              'https://static.oschina.net/uploads/user/105/210414_200.png?t=1373879143000'),
          new Image.network(
              'https://static.oschina.net/uploads/user/105/210414_200.png?t=1373879143000'),
          new Image.network(
              'https://static.oschina.net/uploads/user/105/210414_200.png?t=1373879143000'),
          new Image.network('https://static.oschina.net/uploads/user/105/210414_200.png?t=1373879143000')
        ],
      ),
    );
  }
}
