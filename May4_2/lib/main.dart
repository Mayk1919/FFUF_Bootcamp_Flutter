import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Magic8',
       home: Scaffold(
        appBar: AppBar(
          title: Text('Magic 8'),
        ),
        body: Magic(),
      ),
    );
  }
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}




class _MagicState extends State<Magic> {
  int ballNumber = 1;
  void changeBall(){
    final _random = new Random();
    setState(() {

      ballNumber = _random.nextInt(5)+1;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            changeBall();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
