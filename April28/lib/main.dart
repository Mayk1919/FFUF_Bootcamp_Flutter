import 'package:flutter/material.dart';

void main() {
runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('I am Rich'),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: const SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image(
                  image: AssetImage('images/mansion.jpg'),
                ),
              )

          ),
        )
    );
  }
}
