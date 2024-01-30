import 'package:flutter/material.dart';
import 'package:quizz_app/data/ques.dart';
import 'package:quizz_app/result_screen.dart';
import 'questions_screen.dart';
import 'start_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> selectedAnswer = [];
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

  // Adds selected Answers to the list
  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = 'Result Screen';
      });
    }
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
        child: activeScreen == 'Start Screen'
            ? StartScreen(switchScreen)
            : activeScreen == 'Question Screen'? QuestionsScreen(
                onSelectAnswers: chooseAnswer,
              ): const ResultsScreen(),
      )),
    );
  }
}
