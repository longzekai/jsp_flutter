import 'package:flutter/material.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';
import 'package:jsp_flutter/chinese/base/CalcDemo.dart';
import 'package:jsp_flutter/chinese/base/EchoRoute.dart';
import 'package:jsp_flutter/chinese/base/RandomWordsWidget.dart';
import 'package:jsp_flutter/chinese/base/BaseWidgets.dart';
import 'package:jsp_flutter/chinese/base/TapboxA.dart';
import 'package:jsp_flutter/chinese/base/TextDemo.dart';
import 'package:jsp_flutter/chinese/base/TapboxB.dart';
import 'package:jsp_flutter/chinese/base/BaseButton.dart';
import 'package:jsp_flutter/chinese/base/ImageDemo.dart';
import 'package:jsp_flutter/chinese/base/SwitchAndCheckBoxTestRoute.dart';
import 'package:jsp_flutter/chinese/base/TextFieldDemo.dart';
import 'package:jsp_flutter/chinese/base/FormTestRoute.dart';

class ChineseWeb extends StatelessWidget {
  final List<ListDemoBean> demos = [
    ListDemoBean('计数器应用示例', CalcDemo(title: "计数器应用示例")),
    ListDemoBean('采用路由表的方式传参', EchoRoute()),
    ListDemoBean('导包随机英文名', RandomWordsWidget()),
    ListDemoBean('基础类演示', BaseWidgets(text: "基础类演示",)),
    ListDemoBean('状态管理演示_管理自身状态', TapboxA()),
    ListDemoBean('父widget管理子widget的state', TapboxB()),
    ListDemoBean('文本及样式', TextDemo()),
    ListDemoBean('Button演示', BaseButton()),
    ListDemoBean('图片及ICON演示', ImageDemo()),
    ListDemoBean('单选开关和复选框', SwitchAndCheckBoxTestRoute()),
    ListDemoBean('输入框演示', TextFieldDemo()),
    ListDemoBean('表单Form演示', FormTestRoute()),
  ];

  final String title;

  ChineseWeb({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter中文网'),
      ), //
      body: ListView.builder(
          itemCount: demos.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(demos[index].title),
                  onTap: () {
                    if(demos.length>1 && index == 1) {
                      Navigator.pushNamed(context, "echo_route", arguments: "test arguments");
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return demos[index].widget;
                          }));
                    }
                  },
                ),
                Divider()
              ],
            );
          }),
    );
  }
}
