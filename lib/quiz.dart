import 'package:flutter/material.dart';
import 'package:quizz_app/questions.dart';
import 'package:quizz_app/start_quiz.dart';

const beginAlignment = Alignment.bottomRight;
const endAlignment = Alignment.topLeft;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start_quiz';

  void switchScreen(screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 120, 15, 129),
                Color.fromARGB(255, 23, 78, 104),
              ],
              begin: beginAlignment,
              end: endAlignment,
            ),
          ),
          child: activeScreen == 'start_quiz'
              ? StartQuiz(switchScreen)
              : Questions(switchScreen),
        ),
      ),
    );
  }
}
