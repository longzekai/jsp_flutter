import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final words = WordPair.random() ;

    return Scaffold(
      appBar: AppBar(
        title: Text("导包随机英文名"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(words.toString(),style: TextStyle(fontSize: 30.0),),
        ),
      ),
    );
  }
}
