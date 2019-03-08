import 'package:flutter/material.dart';
import 'package:jsp_flutter/demo03/card_widget.dart';
import 'package:jsp_flutter/demo03/column_widget.dart';
import 'package:jsp_flutter/demo03/row_widget.dart';
import 'package:jsp_flutter/demo03/stack_widget.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';

class ThreeDemo extends StatelessWidget {
  final List<ListDemoBean> threeList = [
    ListDemoBean('水平布局Row的使用', RowDemo(title: '水平布局Row的使用')),
    ListDemoBean('垂直布局Column组件', ColumnDemo(title: '垂直布局Column组件')),
    ListDemoBean('Stack层叠布局', StackDemo(title: 'Stack层叠布局')),
    ListDemoBean('卡片组件布局', CardDemo(title: '卡片组件布局')),
  ];
  final String title;
  ThreeDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView.builder(
          itemCount: threeList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(threeList[index].title),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return threeList[index].widget;
                    }));
                  },
                ),
                Divider()
              ],
            );
          },
        ),
      ),
    );
  }
}
