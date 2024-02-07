import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  backgroundColor: data['userAnswer'] == data['correctAnswer']
                      ? const Color.fromARGB(255, 179, 54, 228)
                      : Colors.white,
                  minRadius: 15,
                  child: Text(
                    ((data['questionIndex'] as int) + 1).toString(),
                    style: const TextStyle(color: Colors.black),
                  )),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        data['question'] as String,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        data['userAnswer'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 35, 144, 194),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          data['correctAnswer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 204, 41, 233),
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
