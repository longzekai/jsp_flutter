import 'package:flutter/material.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';
import 'CalcDemo.dart';
import 'EchoRoute.dart';

class ChineseWeb extends StatelessWidget {
  final List<ListDemoBean> demos = [
    ListDemoBean('计数器应用示例', CalcDemo(title: "计数器应用示例")),
    ListDemoBean('采用路由表的方式传参', EchoRoute())
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
