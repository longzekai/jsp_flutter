import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  /*
  推荐使用方式
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'GridViewDemo',
      home: Scaffold(
        body: new GridView.count(
          crossAxisCount:3,
          crossAxisSpacing: 10.0,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const Text('I am Danny'),
            const Text('I am Danny1'),
            const Text('I am Danny2'),
            const Text('I am Danny3'),
            const Text('I am Danny4'),
            const Text('I am Danny5')
          ],
        ),
      )
    );
  }*/
  final String title;
  GridViewDemo({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.6),
        children: <Widget>[
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover)
        ],
      ),
    );
  }
}
