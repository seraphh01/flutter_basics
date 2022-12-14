import 'package:flutter/material.dart';
import 'package:flutter_basics/answer.dart';
import 'package:flutter_basics/question.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _OtherState();
}

class _OtherState extends State<HomePage> {
  int _index = 0;
  final List questions = const [
    {
      "question": "How are you?",
      "answers": ["Fine", "Alright.."]
    },
    {
      "question": "How much sleep did you get tonight?",
      "answers": ["Enough", "Not enough..", "Pretty Bad"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("Other state")),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Question(text: questions[_index]["question"].toString()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ...((questions[_index]["answers"]! as List)
                            .map((value) {
                          return Answer(
                              onPressedHandler: _onAnswer, text: value);
                        }))
                      ],
                    )
                  ]),
            )));
  }

  _onAnswer(String answer) {
    setState(() {
      _index = (_index + 1) % questions.length;
    });
  }
}
