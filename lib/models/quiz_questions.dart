class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> shuffledAnswer() {
    final copiedList = List.of(answers);
    copiedList.shuffle();
    return copiedList;
  }
}
