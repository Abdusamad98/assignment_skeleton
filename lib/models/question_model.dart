class QuestionModel {
  final String questionText;
  final String answerA;
  final String answerB;
  final String answerC;
  final String answerD;
  final String trueAnswer;

  QuestionModel({
    required this.trueAnswer,
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
    required this.questionText,
  });
}
