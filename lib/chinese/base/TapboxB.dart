import 'package:flutter/material.dart';
import 'package:jsp_flutter/chinese/base/ParentWidget.dart';

// 测试没有效果，暂时不知道如何解决，如果你有办法，请将它完善。
class TapboxB extends StatelessWidget {

  TapboxB({Key key, this.active:false, @required this.onChanged }):super(key: key);

  final bool active ;
  final ValueChanged<bool> onChanged ;


  void _handleTap(){
    onChanged(!active);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("父widget管理子widget的state"),
      ),
      body:GestureDetector(
        onTap: _handleTap,
        child: Center(
          child: Container(
            child: Center(
              child: Text(
                active ? "Active" : 'Inactive',
                style: TextStyle(fontSize: 32.0,color: Colors.white),
              ),
            ),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: active ? Colors.lightGreen : Colors.grey
            ),
          ),
        ),
      ),
    );
  }
}
