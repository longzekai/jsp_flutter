import 'package:flutter/material.dart';
import './pages/MyList.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Test'),
        ),
//        body: ListView(
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
//        children: <Widget>[
//          new Image.network('http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
//          new Image.network('http://jspang.com/static/upload/20190102/9SpnvSzav06JfPUrVtc1hNu9.jpg'),
//          new Image.network(
//              'http://jspang.com/static/myimg/typescript_banner.jpg'
//          ),new Image.network(
//              'http://jspang.com/static/myimg/smile-vue.jpg'
//          )
//        ],
            // 横向排列
//          scrollDirection: Axis.horizontal,
//          children: <Widget>[
//            Container(
//              width: 180.0,
//              color: Colors.lightBlue,
//            ),
//            Container(
//              width: 180.0,
//              color: Colors.amber,
//            ),
//            Container(
//              width: 180.0,
//              color: Colors.deepOrange,
//            )
//          ],
//        ),
      body: Center(
        child: Container(
          height: 200.0,
          child: MyList()
        ),
      ),
      ),
    );
  }
}
