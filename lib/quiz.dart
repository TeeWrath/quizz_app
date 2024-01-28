import 'package:flutter/material.dart';
import 'questions_screen.dart';
import 'start_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Using String
  var activeScreen = 'Start Screen';

// Using INit State Method
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 78, 13, 151),
          Color.fromARGB(255, 107, 15, 168),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: activeScreen == 'Start Screen' ? StartScreen(switchScreen) : const QuestionsScreen(),
      )),
    );
  }
}
