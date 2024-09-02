import 'package:flutter/material.dart';
import 'package:quizz_app/styled_text.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(
          height: 40,
        ),
        const StyledText(
          'Welcome to the quiz!',
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
