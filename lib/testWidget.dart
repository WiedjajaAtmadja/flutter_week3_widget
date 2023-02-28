import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class TestWidget extends StatelessWidget {
  final List<Map<String, Object>> questionAnswers;
  final int questionIndex;
  final VoidCallback chooseAnswer;

  const TestWidget(
      {required this.questionAnswers,
      required this.questionIndex,
      required this.chooseAnswer,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionAnswers[questionIndex]['question'] as String),
        ...(questionAnswers[questionIndex]['answer'] as List<String>)
            .map((answer) {
          print(answer);
          return Answer(chooseAnswer, answer);
        }).toList(),
      ],
    );
  }
}
