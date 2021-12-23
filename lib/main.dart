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
      "answers": [
        {"text": "Purple", "score": 0},
        {"text": "Black", "score": 1},
        {"text": "Red", "score": 0},
        {"text": "Blue", "score": 0},
      ]
    },
    {
      "questionText": "What's Enzo's favourite dish?",
      "answers": [
        {"text": "Yakisoba", "score": 1},
        {"text": "Hamburguer", "score": 0},
        {"text": "Stroganoff", "score": 0},
        {"text": "Feijoada", "score": 0},
      ]
    },
    {
      "questionText": "What's Enzo's favourite drink?",
      "answers": [
        {"text": "Toddynho", "score": 0},
        {"text": "Water", "score": 0},
        {"text": "Pepsi", "score": 1},
        {"text": "Coca-cola", "score": 0},
      ]
    },
    {
      "questionText": "What's Enzo's favourite anime?",
      "answers": [
        {"text": "Yu-Gi-Oh!", "score": 1},
        {"text": "JoJo", "score": 0},
        {"text": "Hunter X Hunter", "score": 0},
        {"text": "Demon Slayer", "score": 0},
      ]
    }
  ];

  var _totalScore = 0;

  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int answerScore) {
    _totalScore += answerScore;

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
          title: Text("Enzo's Quiz"),
          backgroundColor: Colors.black,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
