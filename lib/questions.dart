import 'package:flutter/material.dart';
import 'package:quizz_app/styled_text.dart';

class Questions extends StatefulWidget {
  const Questions(this.homeScreen, {super.key});

  final void Function(dynamic) homeScreen;

  @override
  State<StatefulWidget> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const StyledText(
            'Questions Screen',
            30,
            Color.fromARGB(255, 211, 209, 209),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              widget.homeScreen('start_quiz');
            },
            icon: const Icon(
              Icons.home,
              color: Color.fromARGB(255, 211, 209, 209),
            ),
            label: const StyledText(
              'Home',
              14,
              Color.fromARGB(255, 211, 209, 209),
            ),
          ),
        ],
      ),
    );
  }
}
