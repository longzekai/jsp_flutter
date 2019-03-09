import 'package:flutter/material.dart';

class JJDemo01Child extends StatelessWidget {
  final String title;

  JJDemo01Child({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//     Scaffold(
//        appBar: AppBar(
//            title: Container(
//                child: Center(
//          // 让文字布局居中的另一种实现
//          child: Text(
//            this.title,
//          ),
//        ))),
    return Container(
        child: Card(
      child: FlatButton(
          onPressed: () {
            print('点击了');
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
//                      this.title,
                    '仿热度点赞UI效果',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.topLeft,
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _getBottomItem(Icons.star, '1000'),
                    _getBottomItem(Icons.subject, '1000'),
                    _getBottomItem(Icons.my_location, '1000'),
                  ],
                )
              ],
            ),
          )),
    ));
  }

  Widget _getBottomItem(IconData icon, String text) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 16.0,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
