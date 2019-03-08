import 'package:flutter/material.dart';


void main() => runApp(new MyApp(
  items: new List<String>.generate(100, (i)=> "Item $i")
));

class MyApp extends StatelessWidget {

  final List<String> items;
  MyApp({Key key, @required this.items}):super(key:key) ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Dynamic',
      home: Scaffold(
        appBar: AppBar(title: Text('dynamic')),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index){
              return new ListTile(
                title: new Text('${items[index]}'),
              );
            }
        ),
      ),
    );
  }
}