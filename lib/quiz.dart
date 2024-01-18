import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex; // Use questionIndex here
  final Function answerQuestion;
  const Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerQuestion,
      key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText']
            as dynamic, // Use questionIndex
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score']),
            answer['text'] as String); // Pass answerQuestion directly
      }).toList()
    ]);
  }
}
