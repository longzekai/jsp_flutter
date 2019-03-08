import 'package:flutter/material.dart';
import 'package:jsp_flutter/demo02/container_widget.dart';
import 'package:jsp_flutter/demo02/grid_view_widget.dart';
import 'package:jsp_flutter/demo02/horizontal_list_widget.dart';
import 'package:jsp_flutter/demo02/image_widget.dart';
import 'package:jsp_flutter/demo02/list_view_dynamic.dart';
import 'package:jsp_flutter/demo02/list_view_widget.dart';
import 'package:jsp_flutter/demo02/text_widget.dart';
import 'package:jsp_flutter/flutter_list_demo.dart';

class SecondDemo extends StatelessWidget {
  final List<ListDemoBean> secondList = [
    ListDemoBean(
        'Text Widget 文本组件的使用', TextWidget(title: 'Text Widget 文本组件的使用')),
    ListDemoBean('Container容器组件的使用', ContainerDemo(title: 'Container容器组件的使用')),
    ListDemoBean('Image图片组件的使用', ImageDemo(title: 'Image图片组件的使用')),
    ListDemoBean('ListView 列表组件简介', ListViewDemo(title: 'ListView 列表组件简介')),
    ListDemoBean('横向列表的使用', HorizontalList(title: '横向列表的使用')),
    ListDemoBean('动态列表的使用', ListViewDynamic(title: '动态列表的使用')),
    ListDemoBean('GridView网格列表组件', GridViewDemo(title: 'GridView网格列表组件')),
  ];
  final String title;

  SecondDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView.builder(
          itemCount: secondList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(secondList[index].title),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return secondList[index].widget;
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
