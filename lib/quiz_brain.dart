import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet',
        questionAnswer: true),
    Question(questionText: 'A Slug\'s blood is green', questionAnswer: true),
  ];

  String getQuestion() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    }
    return false;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
