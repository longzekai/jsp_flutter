import 'package:flutter/material.dart';

class MemberCenter extends StatefulWidget {
  _MemberCenterState createState() => _MemberCenterState();
}

class _MemberCenterState extends State<MemberCenter> {
  var userAvatar;
  var userName;
  final List<String> titles = [
    '我的消息',
    '历史记录',
    '我的问题',
    '我的问题',
    '我的问题',
    '我的奖励',
    '我的成就',
    '我的奖励',
    '我的奖励',
    '我的奖励',
    '我的奖励',
    '我的成就',
    '设置'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        reverse: false,
        shrinkWrap: false,
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            expandedHeight: 240.0,
            iconTheme: IconThemeData(color: Colors.transparent),
            title: Text('个人中心'),
            floating: true,
            centerTitle: true,
            forceElevated: true,
            snap: false,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.green,
            flexibleSpace: InkWell(
              onTap: () {
                userAvatar == null ? debugPrint('登录') : debugPrint('用户信息');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  userAvatar == null
                      ? Image.asset(
                          "assets/images/ic_avatar_default.png",
                          width: 60.0,
                          height: 47.0,
                        )
                      : Container(
                          width: 60.0,
                          height: 47.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image: NetworkImage(userAvatar),
                                  fit: BoxFit.cover),
                              border:
                                  Border.all(color: Colors.white, width: 2.0)),
                        ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      userName == null ? '点击头像登录' : userName,
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  )
                ],
              ),
            ),
          ),
//        SliverGrid(
//          delegate: SliverChildBuilderDelegate((BuildContext context, index) {
//            return Container(
//              alignment: Alignment.center,
//              color: Colors.teal[100 * (index % 9)],
//              child: Text('grid item $index'),
//            );
//          }, childCount: 20),
//          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//              maxCrossAxisExtent: 200.0,
//              mainAxisSpacing: 10.0,
//              crossAxisSpacing: 10.0,
//              childAspectRatio: 4.0),
//        ),
          SliverFixedExtentList(
            itemExtent: 60.0,
            delegate: SliverChildBuilderDelegate((context, index) {
              String title = titles[index];
              return Material(
//              alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    print('the is the item of $title');
                  },
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              title,
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 16.0),
                            )),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                      ),
                      Divider(
                        height: 1.0,
                      )
                    ],
                  ),
                ),
              );
            }, childCount: titles.length),
          )
        ],
      ),
    );
  }
}
