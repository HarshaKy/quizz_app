import 'package:flutter/material.dart';
import 'package:quizz_app/styled_text.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<StatefulWidget> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(context) {
    return const Center(
      child: StyledText(
        'Questions Screen',
        30,
        Colors.white,
      ),
    );
  }
}
