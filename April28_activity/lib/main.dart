import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('I am Poor'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Center(
          child: SizedBox(

            child: Image(
              height: 800,
              width:800,
              image: AssetImage('images/patrick.gif'),



            ),

          ),
        ),
      ),
    );
  }
}
