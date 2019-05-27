import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController _nameController = new TextEditingController();

  TextEditingController _selectionController = new TextEditingController();

  FocusNode focusNode1 = new FocusNode();

  FocusNode focusNode2 = new FocusNode();

  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      print(_nameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectionController.text = 'Hello World';
    _selectionController.selection = TextSelection(
        baseOffset: 2, extentOffset: _selectionController.text.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('输入框演示'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
//              controller: _nameController,
                controller: _selectionController,
                maxLines: 1,
                onChanged: (value) {
                  print("onChange: $value");
                },
                decoration: InputDecoration(
                    labelText: '用户名',
                    hintText: '用户名或邮箱',
                    prefixIcon: Icon(Icons.person)),
              ),
              TextField(
                obscureText: true, // 启用隐藏式密码 用“•”替换
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '您的登录密码',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              Container(
                height: 20.0,
              ),
              Text('测试T01、T02控件'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: RaisedButton(
                        onPressed: () {
                          if (null == focusScopeNode) {
                            focusScopeNode = FocusScope.of(context);
                          }
                          focusScopeNode.requestFocus(focusNode2) ;
                        },
                        child: Text('移动焦点'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: RaisedButton(
                      onPressed: () {
                        focusNode1.unfocus();
                        focusNode2.unfocus() ;
                      },
                      child: Text('隐藏键盘'),
                    ),
                  ))
                ],
              ),
              Container(
                height: 20.0,
              ),
              TextField(
                maxLines: 1,
                focusNode: focusNode1,
                decoration: InputDecoration(
                  labelText: 'T01',
                  hintText: 'put something',
                ),
              ),
              TextField(
                maxLines: 1,
                keyboardType: TextInputType.multiline,
                focusNode: focusNode2,
                decoration: InputDecoration(
                  labelText: 'T02',
                  hintText: 'I\'m Happy',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
