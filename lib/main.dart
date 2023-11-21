import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepPurple.shade800,
      body: const StartScreen(),
    ),
  ));
}
