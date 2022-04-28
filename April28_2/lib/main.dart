import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.red,
                child: const Text(
                  'Hello Flutter 1',
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontSize: 40,
                    color: Colors.white,

                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.orange,
                child: Text('Hello Flutter 2'),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.yellow,
                child: Text('Hello Flutter 3'),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.green,
                child: Text('Hello Flutter 4'),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blue,
                child: Text('Hello Flutter 5'),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.indigo,
                child: Text('Hello Flutter 6'),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.purple,
                child: Text('Hello Flutter 7'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
