import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'white', 'score': 3},
        {'text': 'red', 'score': 5},
        {'text': 'yellow', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'horse', 'score': 3},
        {'text': 'lion', 'score': 5},
        {'text': 'leopard', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite bird??',
      'answers': [
        {'text': 'eagle', 'score': 10},
        {'text': 'parrot', 'score': 3},
        {'text': 'dove', 'score': 5},
        {'text': 'falcon', 'score': 1},
      ]
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more _questions');
    } else {
      print("No more _questions!");
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App!'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz)));
  }
}
