import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultText => "You got $totalScore answers correctly!";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FloatingActionButton(
            onPressed: resetQuiz,
            child: Text("RESET"),
            backgroundColor: Colors.red,
          )
        ],
      ),
    );
  }
}
