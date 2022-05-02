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
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: const Center(
          child: SizedBox(
            height: 500,
            width: 500,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('images/patrick.gif'),
            ),
          ),
        ),
      ),
    );
  }
}
