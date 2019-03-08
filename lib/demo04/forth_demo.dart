import 'package:flutter/material.dart';
import 'package:jsp_flutter/demo04/demo0401.dart';
import 'package:jsp_flutter/demo04/demo0402.dart';
import 'package:jsp_flutter/demo04/demo0403.dart';
import 'package:jsp_flutter/demo04/demo0404.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';

class ForthDemo extends StatelessWidget {
  final List<ListDemoBean> forthList = [
    ListDemoBean('一般页面导航和返回', Demo0401(title: '一般页面导航和返回')),
    ListDemoBean('导航参数的传递和接收', Demo0402(title: '导航参数的传递和接收')),
    ListDemoBean('页面跳转并返回数据', Demo0403(title: '页面跳转并返回数据')),
    ListDemoBean('静态资源和项目图片的处理', Demo0404(title: '静态资源和项目图片的处理')),
  ];

  final String title;
  ForthDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView.builder(
          itemCount: forthList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(forthList[index].title),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return forthList[index].widget;
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
