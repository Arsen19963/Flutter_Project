import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  const Result(this.resultScore, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Pretty good result!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable result!';
    } else if (resultScore <= 16) {
      resultText = 'You are crazy man!';
    } else {
      resultText = 'Bad result!';
    }
    return resultText;
  } // This brace should end the resultPhrase getter

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
