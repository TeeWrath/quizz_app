import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;
  @override
  build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 25, 4, 59),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      padding: const EdgeInsets.fromLTRB(100, 12, 100, 12)
    ),
    child: Text(answerText,textAlign: TextAlign.center,style: GoogleFonts.lato(fontWeight: FontWeight.w900),));
  }
}
