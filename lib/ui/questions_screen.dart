import 'dart:async';

import 'package:assignment_skeleton/ui/result_screen.dart';
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
  int correctQuestionsCount = 0;

  late Timer periodicTimer;
  int seconds = 0;

  @override
  void initState() {
    _setTimer();
    super.initState();
  }

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
              "Time: $seconds s",
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
                QuestionModel question =
                    widget.levelQuestions[currentQuestionIndex];
                _onVariantTap(question.answerA);
              },
              onAnswerBTap: () {
                QuestionModel question =
                    widget.levelQuestions[currentQuestionIndex];

                _onVariantTap(question.answerB);
              },
              onAnswerCTap: () {
                QuestionModel question =
                    widget.levelQuestions[currentQuestionIndex];

                _onVariantTap(question.answerC);
              },
              onAnswerDTap: () {
                QuestionModel question =
                    widget.levelQuestions[currentQuestionIndex];

                _onVariantTap(question.answerD);
              },
            )
          ],
        ),
      ),
    );
  }

  _onVariantTap(String answer) {
    QuestionModel question = widget.levelQuestions[currentQuestionIndex];
    if (question.trueAnswer == answer) {
      correctQuestionsCount++;
    }
    if (widget.levelQuestions.length - 1 > currentQuestionIndex) {
      setState(() {
        periodicTimer.cancel();
        _setTimer();
        currentQuestionIndex++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ResultScreen(correctAnswersCount: correctQuestionsCount);
          },
        ),
      );
    }
  }

  _setTimer() {
    periodicTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        print("TIME:${timer.tick} ");
        setState(() {
          seconds = timer.tick;
          if (timer.tick == 20) {
            if (widget.levelQuestions.length - 1 > currentQuestionIndex) {
              setState(() {
                currentQuestionIndex++;
              });
            } else {
              timer.cancel();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(
                        correctAnswersCount: correctQuestionsCount);
                  },
                ),
              );
            }
            seconds = 0;
            timer.cancel();
            _setTimer();
          }
        });
      },
    );
  }
}
