import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/data/quiz_questions.dart';
import 'package:quizz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, this.resetQuiz, {super.key});

  final List<String> chosenAnswers;
  final void Function() resetQuiz;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_number': i + 1,
          'question': questions[i].question,
          'correct_answer': questions[i].answers[0],
          'chosen_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summary = getSummary();
    final totalQuestions = questions.length;
    final numCorrectAnswers = summary.where((item) {
      return item['correct_answer'] == item['chosen_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(
          left: 40,
          right: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $totalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 219, 162, 236),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summary),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: resetQuiz,
              icon: const Icon(
                Icons.restart_alt,
                color: Color.fromARGB(255, 211, 209, 209),
              ),
              label: Text(
                'Restart Quiz',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
