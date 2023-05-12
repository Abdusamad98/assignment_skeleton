import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.correctAnswersCount})
      : super(key: key);

  final int correctAnswersCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Correct Answers: $correctAnswersCount"),
      ),
    );
  }
}
