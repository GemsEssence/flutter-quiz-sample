import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final Function answerQuestion;
  final int qIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[qIndex]['questionText']),
        ...(questions[qIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['ansText']);
        }).toList()
        // Answer()
      ],
    );
  }
}
