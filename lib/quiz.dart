import 'package:flutter/material.dart';
import 'package:quizz_app/questions.dart';
import 'package:quizz_app/start_quiz.dart';
import 'package:quizz_app/data/quiz_questions.dart';

const beginAlignment = Alignment.bottomRight;
const endAlignment = Alignment.topLeft;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start_quiz';

  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  void addAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          activeScreen = 'start_quiz';
          selectedAnswers.clear();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidget = activeScreen == 'start_quiz'
        ? StartQuiz(switchScreen)
        : Questions(addAnswer);

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
          child: screenWidget,
        ),
      ),
    );
  }
}
