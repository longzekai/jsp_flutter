import 'package:flutter/material.dart';
import 'package:flutter_drag_scale/flutter_drag_scale.dart';

class ScaleImageDemo extends StatelessWidget {
  final String title;

  ScaleImageDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: DragScaleContainer(
          doubleTapStillScale: true,
          child: Image.asset('assets/images/arron.jpg'),
        ),
      ),
    );
  }
}
