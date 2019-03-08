import 'package:flutter/material.dart';

import 'BottomNaivgationWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom NavigationBar',
//      theme: ThemeData.light(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: BottomNavigationWidget(),
    );
  }
}
