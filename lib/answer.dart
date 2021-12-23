import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleAnswerSelection;

  Answer(this.handleAnswerSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handleAnswerSelection,
        child: Text("Answer"),
      ),
    );
  }
}
