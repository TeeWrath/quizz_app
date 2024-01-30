import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You Answered X out of Y questions correctly!', style: GoogleFonts.lato(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            const Text('Answered Questions....',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
