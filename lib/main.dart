import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
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

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      if (_questionIndex > _questions.length) {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Text"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
