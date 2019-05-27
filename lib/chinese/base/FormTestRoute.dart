import 'package:flutter/material.dart';

///
/// 利用表单 来控制属性值得校验。
///
class FormTestRoute extends StatefulWidget {
  @override
  _FormTestRouteState createState() => _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单Form演示'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                autovalidate: true, //开启自动校验
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      autofocus: true,
                      controller: _nameController,
                      decoration: InputDecoration(
                          labelText: "用户名",
                          hintText: "用户名或邮箱",
                          icon: Icon(Icons.person)),
                      validator: (value) {
                        return value.trim().length > 0 ? null : '用户名不能为空';
                      },
                    ),
                    TextFormField(
                      controller: _pwdController,
                      decoration: InputDecoration(
                          labelText: "密码",
                          hintText: "您的登录密码",
                          icon: Icon(Icons.lock)),
                      obscureText: true,
                      validator: (value) {
                        return value.trim().length > 5 ? null : '密码不能少于6位';
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: RaisedButton(
                            onPressed: () {
                              if ((_formKey.currentState as FormState)
                                  .validate()) {
                                //验证通过提交数据
                                print('验证通过');
                              } else {
                                print('验证失败');
                              }
                            },
                            child: Text('登录'),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                          ))
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
