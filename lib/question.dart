import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String text;
  List<String>? answers;
  List<Widget> _texts = [];
  Question({Key? key, required this.text, this.answers}) : super(key: key) {
    answers?.forEach((element) => {
          _texts.add(ElevatedButton(
            onPressed: null,
            child: Text(element),
          ))
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        width: 200,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(text),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _texts,
            )
          ],
        )));
  }
}
