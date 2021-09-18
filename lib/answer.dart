import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function _answerQuestion;
  final String _answerText;

  AnswerButton(this._answerText, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: _answerQuestion,
        child: Text(this._answerText),
      ),
    );
  }
}
