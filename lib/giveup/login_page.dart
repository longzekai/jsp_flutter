import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var leftRightPadding = 30.0;
  var topBottomPadding = 4.0;
  static const LOGO = 'images/oschina.png';

  var hintTips = TextStyle(fontSize: 15.0, color: Colors.black26);
  var _userNameController = TextEditingController();
  var _userPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          '登录',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(
                  leftRightPadding, 50.0, leftRightPadding, topBottomPadding),
              child: Image.asset(LOGO),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  leftRightPadding, 50.0, leftRightPadding, topBottomPadding),
              child: TextField(
                style: hintTips,
                controller: _userNameController,
                decoration: InputDecoration(hintText: '请输入用户名'),
                obscureText: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  leftRightPadding, 50.0, leftRightPadding, topBottomPadding),
              child: TextField(
                style: hintTips,
                controller: _userPassController,
                decoration: InputDecoration(hintText: '请输入用户密码'),
                obscureText: true,
              ),
            ),
            Container(
              width: 360.0,
              margin: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
              padding: EdgeInsets.fromLTRB(
                  leftRightPadding, 50.0, leftRightPadding, topBottomPadding),
              child: Card(
                color: Colors.green,
                elevation: 6.0,
                child: FlatButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        '马上登录',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
