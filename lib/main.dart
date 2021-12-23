import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      if (_questionIndex > 3) {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's Enzo's favourite colour?",
        "answers": ["Black", "Purple", "Red", "Blue"]
      },
      {
        "questionText": "What's Enzo's favourite dish?",
        "answers": ["Yakisoba", "Hamburguer", "Stroganoff", "Feijoada"]
      },
      {
        "questionText": "What's Enzo's favourite drink?",
        "answers": ["Pepsi", "Toddynho", "Water", "Coca-cola"]
      },
      {
        "questionText": "What's Enzo's favourite anime?",
        "answers": ["JoJo", "Yu-Gi-Oh!", "Hunter X Hunter", "Demon Slayer"]
      }
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Text"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]["questionText"] as String),
          ...(questions[_questionIndex]["answers"] as List<String>)
              .map((answer) => Answer(_answerQuestion, answer))
              .toList()
        ]),
      ),
    );
  }
}
