import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepPurple.shade800,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Learn Flutter the fun way',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: const Text('Start Quiz',
                    style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    ),
  ));
}
