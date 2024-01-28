class QuizQuestions {
  // Constructor Function
  QuizQuestions(this.text, this.answers);

  // Properties of the class
  final String text; // Question Statement
  final List<String> answers; // List of Answers

  List<String> getShuffledAnswers() {
    // We create a new list because shuffle() function changes the original list, so we made a copy of original list and shuffled the copied list and sent it.
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
