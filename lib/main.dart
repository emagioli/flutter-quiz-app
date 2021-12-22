import 'package:flutter/material.dart';

import './question.dart';

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
      "What's Enzo's favourite colour?",
      "What's Enzo's favourite dish?",
      "What's Enzo's favourite drink?",
      "What's Enzo's favourite anime?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Text"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Option 1"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Option 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Option 3"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Option 4"),
            )
          ],
        ),
      ),
    );
  }
}
