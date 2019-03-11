import 'package:flutter/material.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';
import 'package:jsp_flutter/giveup/login_page.dart';
import 'package:jsp_flutter/giveup/member_center.dart';

class GiveUpDemo extends StatelessWidget {
  final List<ListDemoBean> giveUpList = [
    ListDemoBean('登录界面', LoginPage()),
    ListDemoBean('个人中心界面', MemberCenter()),
  ];

  final String title;

  GiveUpDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView.builder(
        itemCount: giveUpList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(giveUpList[index].title),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return giveUpList[index].widget;
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
