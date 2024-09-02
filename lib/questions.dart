import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/quiz_questions.dart';

class Questions extends StatefulWidget {
  const Questions(this.homeScreen, {super.key});

  final void Function(dynamic) homeScreen;

  @override
  State<StatefulWidget> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map(
            (answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
