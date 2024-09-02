import 'package:flutter/material.dart';
import 'package:quizz_app/styled_text.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.startQuiz, {super.key});

  final void Function(dynamic) startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.8,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(185, 211, 209, 209),
          ),
          const SizedBox(
            height: 80,
          ),
          const StyledText(
            'Welcome to the quiz!',
            30,
            Color.fromARGB(255, 211, 209, 209),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz('questions');
            },
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Color.fromARGB(255, 211, 209, 209),
            ),
            label: const StyledText(
              'Start Quiz',
              14,
              Color.fromARGB(255, 211, 209, 209),
            ),
          ),
        ],
      ),
    );
  }
}
