import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_basics/question.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _OtherState();
}

class _HomePageState extends State<HomePage> {
  String message = "Hello";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: const Text(
            "App title",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.indigo.shade50),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: const TextStyle(fontSize: 100),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: _onPressedYo, child: const Text("Yo")),
              ElevatedButton(
                  onPressed: _onPressedBye, child: const Text("Bye")),
              ElevatedButton(
                  onPressed: _onPressedHello, child: const Text("Hello"))
            ],
          )
        ],
      )),
      backgroundColor: Colors.blue.shade100,
    ));
  }

  _onPressedYo() {
    if (message == "Yo") return;
    setState(() {
      message = "Yo";
    });
  }

  _onPressedBye() {
    if (message == "Bye") return;
    setState(() {
      message = "Bye";
    });
  }

  _onPressedHello() {
    if (message == "Hello") return;
    setState(() {
      message = "Hello";
    });
  }
}

class _OtherState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Other state")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(
            text: "How are you doing?",
            answers: const ["Yo", "Bye"],
          )
        ],
      )),
    ));
  }
}
