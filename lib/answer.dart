import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerTrigger;
  final String answerText;

  Answer(this.answerTrigger, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text(answerText),
          color: Colors.blue[200],
          onPressed: answerTrigger),
    );
  }
}
