import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return Scaffold(
      appBar: AppBar(
        title: Text('图片及ICON演示'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  '从asset中加载图片',
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                Image(image: AssetImage("assets/images/oschina.png")),
                Image.asset('assets/images/oschina.png'),
                Container(
                  height: 10.0,
                ),
                Text(
                  '网络加载图片',
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                ),
                Image.network(
                    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2692809760,3266574367&fm=26&gp=0.jpg'),
                Container(
                  height: 10.0,
                ),
                Text(
                  '矢量图片文本展示',
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                ),
                Text(
                  icons,
                  style: TextStyle(
                      fontFamily: "MaterialIcons",
                      fontSize: 68.0,
                      color: Colors.green),
                ),
                Text(
                  '矢量图片Icon展示',
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.accessible,
                        color: Colors.green,
                        size: 66,
                      ),
                      Icon(
                        Icons.error,
                        color: Colors.green,
                        size: 66,
                      ),
                      Icon(
                        Icons.fingerprint,
                        color: Colors.green,
                        size: 66,
                      ),
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
