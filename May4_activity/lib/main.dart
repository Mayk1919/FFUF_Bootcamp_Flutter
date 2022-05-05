import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Card Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 54;
  dynamic _cardNumber = 0;
  int _cardTypeNumber = 0;
  String _cardType = '';
  String _rightCardName = 'images/backcover.jpg';
  String _leftCardName = 'images/blank.png';
  bool _isToFlip = true;
  List<String> _cardList = List.empty(growable: true);
  String _alertTitle = '';
  String _alertMessage ='';

  void startAgain() {
    setState(() {
      _counter = 54;
       _rightCardName = 'images/backcover.jpg';
       _leftCardName = 'images/blank.png';
       _isToFlip = true;
      _cardList = List.empty(growable: true);
    });
  }

  void _decrementCounter() {
    setState(() {
      if (!_isToFlip) {
        _leftCardName = _rightCardName;
      }
      do {
        _cardTypeNumber = Random().nextInt(4) + 1;
        _cardNumber = Random().nextInt(15) + 1;

        switch (_cardTypeNumber) {
          case 1:
            {
              _cardType = 'clubs';
            }
            break;
          case 2:
            {
              _cardType = 'diamonds';
            }
            break;
          case 3:
            {
              _cardType = 'hearts';
            }
            break;
          default:
            {
              _cardType = 'spades';
            }
        }

        switch (_cardNumber) {
          case 1:
            {
              _rightCardName = 'images/ace_of_${_cardType}.png';
            }
            break;
          case 11:
            {
              _rightCardName = 'images/jack_of_${_cardType}.png';
            }
            break;
          case 12:
            {
              _rightCardName = 'images/queen_of_${_cardType}.png';
            }
            break;
          case 13:
            {
              _rightCardName = 'images/king_of_${_cardType}.png';
            }
            break;
          case 14:
            {
              _rightCardName = 'images/black_joker.png';
            }
            break;
          case 15:
            {
              _rightCardName = 'images/red_joker.png';
            }
            break;

          default:
            {
              _rightCardName = 'images/${_cardNumber}_of_${_cardType}.png';
            }
        }
      }while (_cardList.contains(_rightCardName));
      _isToFlip = !_isToFlip;
      if (_isToFlip) {
        _rightCardName = 'images/backcover.jpg';
      } else {
        if (_cardNumber == 1) {
           _alertTitle = 'Congratulations';
            _alertMessage ='You won by drawing an Ace!';
           _showDialog(context,_alertMessage,_alertTitle);
        }
          if (_cardNumber == 14 || _cardNumber == 15) {
            _alertTitle = 'Sorry';
            _alertMessage ='You lose by drawing a Joker!';
            _showDialog(context,_alertMessage,_alertTitle);
          }
        }
        _cardList.add(_rightCardName);
        _counter -= 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Draw cards until you draw an Ace to win or Joker to lose',
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Number of Cards Remaining:',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage(_leftCardName),
                      width: double.infinity,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: _decrementCounter,
                    child: Image(
                      image: AssetImage(_rightCardName),
                      width: double.infinity,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  _showDialog(BuildContext context,String alertMessage, String alertTitle) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(

          title:  Text(
            alertTitle,
            textAlign: TextAlign.center,
          ),
          content:  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                alertMessage,
                textAlign: TextAlign.center,
              ),
              // const Text(
              //   'Try Again?',
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),

          // actions: [
          //
          //   TextButton(
          //     onPressed: () {
          //       _decrementCounter;
          //     },
          //     child: const Text(
          //       'YES',
          //       style: TextStyle(color: Colors.black),
          //       textAlign: TextAlign.center,
          //     ),
          //   ),
          //   TextButton(
          //     onPressed: () {
          //
          //     },
          //     child: const Text(
          //       'NO',
          //       style: TextStyle(color: Colors.black),
          //       textAlign: TextAlign.center,
          //     ),
          //   ),
          // ],
        );
      },
    );
  }

}


