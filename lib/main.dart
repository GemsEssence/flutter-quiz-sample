import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoAppState();
  }
}

class DemoAppState extends State<DemoApp> {
  var qIndex = 0;
  var score = 0;
  static const _questions = [
    {
      'questionText': 'Which is your favorite country?',
      'answers': [
        {'ansText': 'India', 'score': 10},
        {'ansText': 'US', 'score': 20},
        {'ansText': 'China', 'score': 30}
      ]
    },
    {
      'questionText': 'Your favorite fruit is?',
      'answers': [
        {'ansText': 'Banana', 'score': 10},
        {'ansText': 'Orange', 'score': 20},
        {'ansText': 'Apple', 'score': 30}
      ]
    },
    {
      'questionText': 'Best mobile company',
      'answers': [
        {'ansText': 'Sansung', 'score': 10},
        {'ansText': 'Nokia', 'score': 20},
        {'ansText': 'Mi', 'score': 30}
      ]
    }
  ];

  void _buttonPressed(int number) {
    print("Button Pressed!!! $qIndex and ${_questions.length}");
    score += number;
    if (qIndex < _questions.length) {
      setState(() {
        qIndex = qIndex + 1;
      });
    } else {
      print("OUT OF RANGE Button Pressed!!! $qIndex");
    }
  }

  void _resetQuiz() {
    this.setState(() {
      score = 0;
      qIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Dashboard"),
            ),
            body: (qIndex < _questions.length)
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _buttonPressed,
                    qIndex: qIndex)
                : Result(score, _resetQuiz)));
  }
}
