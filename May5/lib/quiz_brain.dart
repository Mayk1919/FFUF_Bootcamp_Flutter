import 'package:may5/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
      questionText: 'Seahorses have stomachs for the absorption of nutrients from food',
      questionAnswer: false,
    ),
    Question(
      questionText: 'The letter H is between letters G and J on a keyboard',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Camels have three sets of eyelashes',
      questionAnswer: true,
    ),
    Question(
      questionText: 'There are stars and zigzags on the flag of America',
      questionAnswer: false,
    ),
    Question(
      questionText: 'New York is nicknamed \'The Big Orange\'',
      questionAnswer: false,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber += 1;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now return true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
