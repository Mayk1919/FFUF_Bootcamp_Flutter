import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String category = 'Baker\' choice!';
  final String title = 'Take a sip of this green smoothie!';
  final String description = 'Learn to make the perfect smoothie.';
  final String chef = 'Lunamarianne';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
            children: [
          Positioned(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/pic4.jpg'),

          ),
          ),
          Positioned(
            child: Text(category),
            top: 40,
          ),
          Positioned(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            top: 60,
          ),
          Positioned(
            child: Text(
              description,
              style: TextStyle(
                fontSize: 12,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = Colors.black38,
              ),
            ),
            bottom: 30,
            right: 0,
          ),
          Positioned(
            child: Text(
              description,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            bottom: 30,
            right: 0,
          ),
          Positioned(
            child: Text(
              chef,
              style: TextStyle(
                fontSize: 12,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = Colors.black38,
              ),
            ),
            bottom: 10,
            right: 0,
          ),
          Positioned(
            child: Text(
              chef,
              style: TextStyle(fontSize: 12),
            ),
            bottom: 10,
            right: 0,
          ),
          Positioned(
              child: Icon(
                Icons.thumb_up_alt_outlined ,
                size: 50,
              ),
            bottom: 10,
            left: 0,
          ),

        ]),
        padding: const EdgeInsets.all(17),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/pic2.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          border: Border(
            top: BorderSide(
              color: Colors.red, //Color of the border
              style: BorderStyle.solid, //Style of the border
              width: 10, //width of the border
            ),
            bottom: BorderSide(
              color: Colors.red, //Color of the border
              style: BorderStyle.solid, //Style of the border
              width: 10, //width of the border
            ),
            left: BorderSide(
              color: Colors.red, //Color of the border
              style: BorderStyle.solid, //Style of the border
              width: 10, //width of the border
            ),
            right: BorderSide(
              color: Colors.red, //Color of the border
              style: BorderStyle.solid, //Style of the border
              width: 10, //width of the border
            ),
          ),
        ),
      ),
    );
  }
}
