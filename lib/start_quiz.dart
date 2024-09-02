import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.startQuiz, {super.key});

  final void Function(String) startQuiz;

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
          Text(
            'Welcome to the Quiz!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz('questions');
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Color.fromARGB(255, 211, 209, 209),
            ),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
