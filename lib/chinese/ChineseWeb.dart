import 'package:flutter/material.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';
import 'CalcDemo.dart';

class ChineseWeb extends StatelessWidget {
  final List<ListDemoBean> demos = [
    ListDemoBean('计数器应用示例', CalcDemo(title: "计数器应用示例"))
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return demos[index].widget;
                    }));
                  },
                ),
                Divider()
              ],
            );
          }),
    );
  }
}
