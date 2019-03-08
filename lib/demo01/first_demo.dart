import 'package:flutter/material.dart';
import 'package:jsp_flutter/demo01/hello_world.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';

class FirstDemo extends StatelessWidget {
  final List<ListDemoBean> firstList = [
    ListDemoBean('写一个HelloWorld程序', HelloWorld())
  ];

  final String title;
  FirstDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView.builder(
        itemCount: firstList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(firstList[index].title),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return HelloWorld(
                      title: firstList[index].title,
                    );
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
