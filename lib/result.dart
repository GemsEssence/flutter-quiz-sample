import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (score <= 30) {
      resultText = 'You are awesome and great choice, Thanks';
    } else if (score <= 50) {
      resultText = 'Middle of the choice';
    } else {
      resultText = 'Great you are the winner';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Reset Quiz'),
          onPressed: resetQuiz,
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
