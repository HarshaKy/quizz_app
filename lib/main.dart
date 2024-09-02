import 'package:flutter/material.dart';
import 'package:quizz_app/gradient_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 120, 15, 129),
            Color.fromARGB(255, 23, 78, 104),
          ],
        ),
      ),
    );
  }
}
