import 'package:flutter/material.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';
import 'package:jsp_flutter/higherUI/jj_demo01.dart';

class UIDemo extends StatelessWidget {
  final List<ListDemoBean> uiDemoList = [
    ListDemoBean('仿热度点赞UI效果', JJDemo01(title: '仿热度点赞UI效果')),
  ];

  final String title;
  UIDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        centerTitle: true, // 设置标题文字居中
        backgroundColor: Colors.lightBlue[100],
      ),
      body: ListView.builder(
        itemCount: uiDemoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(uiDemoList[index].title),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return uiDemoList[index].widget;
                  }));
                },
              ),
              Divider()
            ],
          );
        },
      ),
    );
  }
}
