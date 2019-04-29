import 'package:flutter/material.dart';
import 'package:jsp_flutter/chinese/ChineseWeb.dart';
import 'package:jsp_flutter/demo01/first_demo.dart';
import 'package:jsp_flutter/demo02/second_demo.dart';
import 'package:jsp_flutter/demo03/three_demo.dart';
import 'package:jsp_flutter/demo04/forth_demo.dart';
import 'package:jsp_flutter/giveup/give_up_demo.dart';
import 'package:jsp_flutter/higherUI/higher_ui_demo.dart';

class ListDemoBean {
  final String title;
  final Widget widget;
  ListDemoBean(this.title, this.widget);
}

class ListDemo extends StatelessWidget {
  final List<ListDemoBean> demoList = [
    ListDemoBean('Flutter 第一季', FirstDemo(title: 'Flutter 第一季')),
    ListDemoBean('Flutter 第二季', SecondDemo(title: 'Flutter 第二季')),
    ListDemoBean('Flutter 第三季', ThreeDemo(title: 'Flutter 第三季')),
    ListDemoBean('Flutter 第四季', ForthDemo(title: 'Flutter 第四季')),
    ListDemoBean('20个Flutter实例视频教程', FirstDemo(title: '20个Flutter实例视频教程')),
    ListDemoBean('高级UI Demo展示', UIDemo(title: '高级UI Demo展示')),
    ListDemoBean(
        '从入门到奔溃',
        GiveUpDemo(
          title: '从入门到奔溃',
        )),
    ListDemoBean('Flutter中文网', ChineseWeb())
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: demoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(demoList[index].title),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return demoList[index].widget;
                  }));
                },
              ),
              Divider()
            ],
          );
        });
  }
}
