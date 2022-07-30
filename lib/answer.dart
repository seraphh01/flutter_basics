import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final void Function(String) onPressedHandler;
  final String text;

  const Answer({Key? key, required this.onPressedHandler, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ));
  }

  _onPressed() {
    onPressedHandler(text);
  }
}
