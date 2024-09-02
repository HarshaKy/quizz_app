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
            Color.fromARGB(255, 228, 139, 236),
            Color.fromARGB(255, 206, 144, 144),
          ],
        ),
      ),
    );
  }
}
