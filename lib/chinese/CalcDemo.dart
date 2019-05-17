import 'package:flutter/material.dart';
import 'PageRouteTest.dart';

class CalcDemo extends StatelessWidget {
  final String title;

  CalcDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: new Calc(),
    );
  }
}

class Calc extends StatefulWidget {
  Calc({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _CalcState();
  }
}

class _CalcState extends State<Calc> {
  int _conuter = 0;

  void _increaterConuter() {
    setState(() {
      _conuter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('你可以点击下面的+号来改变数字'),
            Text(
              '$_conuter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("路由跳转"),
              textColor: Colors.blue,
              onPressed: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context){
//                    return PageRouteTest();
//                }));

              // 采用路由表的方式
                Navigator.pushNamed(context, "page_route");
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaterConuter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
