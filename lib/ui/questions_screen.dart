import 'package:assignment_skeleton/widgets/variants.dart';
import 'package:flutter/material.dart';

import '../models/question_model.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key, required this.levelQuestions})
      : super(key: key);

  final List<QuestionModel> levelQuestions;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find answers..."),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              "Time: 10 s",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 100),
            Text(
              widget.levelQuestions[currentQuestionIndex].questionText,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
            ),
            const SizedBox(height: 100),
            VariantsView(
              question: widget.levelQuestions[currentQuestionIndex],
              onAnswerATap: () {
                setState(() {
                  currentQuestionIndex++;
                });
              },
              onAnswerBTap: () {
                setState(() {
                  currentQuestionIndex++;
                });
              },
              onAnswerCTap: () {
                setState(() {
                  currentQuestionIndex++;
                });
              },
              onAnswerDTap: () {
                setState(() {
                  currentQuestionIndex++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
