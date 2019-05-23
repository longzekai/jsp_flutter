import 'package:flutter/material.dart';


class TapboxA extends StatefulWidget {

  TapboxA({Key key}):super(key:key) ;
  @override
  _TapboxA createState() => _TapboxA();
}
//管理自身状态.
class _TapboxA extends State<TapboxA> {

  bool _active = false ;

  void _handleTap(){
    setState(() {
      _active = !_active;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态管理演示_管理自身状态"),
      ),
      body: GestureDetector(
        onTap: _handleTap,
        child: Center(
          child: Container(
            child: Center(
              child: Text(
                _active ? "Active" : 'Inactive',
                style: TextStyle(fontSize: 32.0,color: Colors.white),
              ),
            ),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: _active ? Colors.lightGreen : Colors.grey
            ),
          ),
        ),
      ),
    );
  }
}
