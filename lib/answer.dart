import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleAnswerSelection;
  final String answerText;

  Answer(this.handleAnswerSelection, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo)),
        onPressed: handleAnswerSelection,
        child: Text(answerText),
      ),
    );
  }
}
