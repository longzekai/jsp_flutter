import 'package:flutter/material.dart';

class ListViewDynamic extends StatelessWidget {
  final List<String> items = new List<String>.generate(100, (i) => "Item $i");
  final String title;
  ListViewDynamic({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                new ListTile(
                  title: new Text('${items[index]}'),
                  onTap: () {
                    print('点击了${index}');
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('点击了${index}')));
                  },
                ),
                Divider()
              ],
            );
          }),
    );
  }
}
