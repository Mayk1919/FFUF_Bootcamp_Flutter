import 'package:may5_activity/question.dart';
import 'dart:math';
class QuizBrain {
  final List<Question> _questionBank = [
    Question(
      questionText: 'In 1768, Captain James Cook set out to explore which ocean?',
      choices: {
        'a':'Pacific Ocean',
        'b':'Atlantic Ocean',
        'c':'Indian Ocean',
        'd':'Arctic Ocean',
      },
      questionAnswer: 'A',
    ),
    Question(
      questionText: 'What is actually electricity?',
      choices: {
        'a':'A flow of water',
        'b':'A flow of air',
        'c':'A flow of electrons',
        'd':'A flow of atoms',
      },
      questionAnswer: 'C',
    ),
    Question(
      questionText: 'Which of the following is not an international organisation?',
      choices: {
        'a':'FIFA',
        'b':'NATO',
        'c':'ASEAN',
        'd':'FBI',
      },
      questionAnswer: 'D',
    ),
    Question(
      questionText: 'Which of the following disorders is the fear of being alone?',
      choices: {
        'a':'Agoraphobia',
        'b':'Aerophobia',
        'c':'Acrophobia',
        'd':'Arachnophobia',
      },
      questionAnswer: 'A',
    ),
    Question(
      questionText: 'Which of the following is a song by the German heavy metal band “Scorpions”?',
      choices: {
        'a':'Stairway to Heaven',
        'b':'Wind of Change',
        'c':'Don’t Stop Me Now',
        'd':'Hey Jude',
      },
      questionAnswer: 'B',
    ),
    Question(
      questionText: 'What is the speed of sound?',
      choices: {
        'a':'120 km/h',
        'b':'1,200 km/h',
        'c':'400 km/h',
        'd':'700 km/h',
      },
      questionAnswer: 'B',
    ),
    Question(
      questionText: 'Which is the easiest way to tell the age of many trees?',
      choices: {
        'a':'To measure the width of the tree',
        'b':'To count the rings on the trunk',
        'c':'To count the number of leaves',
        'd':'To measure the height of the tree',
      },
      questionAnswer: 'B',
    ),
    Question(
      questionText: 'What do we call a newly hatched butterfly?',
      choices: {
        'a':'A moth',
        'b':'A butter',
        'c':'A caterpillar',
        'd':'A chrysalis',
      },
      questionAnswer: 'C',
    ),
    Question(
      questionText: 'In total, how many novels were written by the Bronte sisters?',
      choices: {
        'a':'4',
        'b':'5',
        'c':'6',
        'd':'7',
      },
      questionAnswer: 'D',
    ),
    Question(
      questionText: 'Which did Viking people use as money?',
      choices: {
        'a':'Rune stones',
        'b':'Jewellery',
        'c':'Seal skins',
        'd':'Wool',
      },
      questionAnswer: 'B',
    ),
    Question(
      questionText: 'What was the first country to use tanks in combat during World War I?',
      choices: {
        'a':'France',
        'b':'Japan',
        'c':'Britain',
        'd':'Germany',
      },
      questionAnswer: 'C',
    ),
    Question(
      questionText: 'What is the main component of the sun?',
      choices: {
        'a':'Liquid lava',
        'b':'Gas',
        'c':'Molten iron',
        'd':'Rock',
      },
      questionAnswer: 'B',
    ),
    Question(
      questionText: 'Goulash is a type of beef soup in which country?',
      choices: {
        'a':'Hungary',
        'b':'Czech Republic',
        'c':'Slovakia',
        'd':'Ireland',
      },
      questionAnswer: 'A',
    ),
    Question(
      questionText: 'Which two months are named after Emperors of the Roman Empire?',
      choices: {
        'a':'January and February',
        'b':'March and April',
        'c':'May and June',
        'd':'July and August',
      },
      questionAnswer: 'D',
    ),
    Question(
      questionText: 'Which of the following animals can run the fastest?',
      choices: {
        'a':'Cheetah',
        'b':'Leopard',
        'c':'Tiger',
        'd':'Lion',
      },
      questionAnswer: 'A',
    ),
    Question(
      questionText: 'Where did the powers of Spiderman come from?',
      choices: {
        'a':'He was born with them',
        'b':'He was bitten by a radioactive spider',
        'c':'He went through a scientific experiment',
        'd':'He woke up with them after a dream',
      },
      questionAnswer: 'B',
    ),
    Question(
      questionText: 'What is the most points that a player can score with a single throw in darts?',
      choices: {
        'a':'20',
        'b':'40',
        'c':'60',
        'd':'80',
      },
      questionAnswer: 'C',
    ),
    Question(
      questionText: 'In the United States, football is called soccer. So what is American football called in the United Kingdom?',
      choices: {
        'a':'Rugby',
        'b':'American football',
        'c':'Handball',
        'd':'Combball',
      },
      questionAnswer: 'B',
    ),
    Question(
      questionText: 'Which of the following actors was the first one to play James Bond?',
      choices: {
        'a':'Timothy Dalton',
        'b':'Roger Moore',
        'c':'Sean Connery',
        'd':'George Lazenby',
      },
      questionAnswer: 'C',
    ),
    Question(
      questionText: 'Which of the following songs was the top-selling hit in 2019?',
      choices: {
        'a':'Someone You Loved',
        'b':'Old Town Road',
        'c':'I Don’t Care',
        'd':'Bad Guy',
      },
      questionAnswer: 'A',
    ),
  ];
  int _questionNumber = 0;
  int _questionCount = 0;
  List <int> _questionList = List.empty(growable: true);


  void nextQuestion() {
    do {
    _questionNumber = Random().nextInt(_questionBank.length);
    }while(_questionList.contains(_questionNumber));
    _questionList.add(_questionNumber);
    _questionCount +=1;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  Map getQuestionChoices(){
    return _questionBank[_questionNumber].choices;
  }

  String getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionCount > 9) {
      print('Now return true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionList = List.empty(growable: true);
    _questionCount = 0;
  }
}
