import 'package:assignment_skeleton/models/question_model.dart';
import 'package:flutter/material.dart';

class VariantsView extends StatelessWidget {
  const VariantsView(
      {Key? key,
      required this.question,
      required this.onAnswerATap,
      required this.onAnswerBTap,
      required this.onAnswerCTap,
      required this.onAnswerDTap})
      : super(key: key);

  final QuestionModel question;
  final VoidCallback onAnswerATap;
  final VoidCallback onAnswerBTap;
  final VoidCallback onAnswerCTap;
  final VoidCallback onAnswerDTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onAnswerATap,
                  child: Text(
                    "A) ${question.answerA}",
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: onAnswerBTap,
                  child: Text(
                    "B) ${question.answerB}",
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onAnswerCTap,
                  child: Text(
                    "C) ${question.answerC}",
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: onAnswerDTap,
                  child: Text(
                    "D) ${question.answerD}",
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
