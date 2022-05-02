import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  final String category = 'Baker\' choice!';
  final String title = 'Truly Filipino!';
  final String description = 'Learn to make the perfect Kwek Kwek.';
  final String chef = 'Lunamarianne';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children:[

          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pic3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    category,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: Center(
                    child: Text(
                  title,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
                width: double.infinity,
                margin: EdgeInsets.all(20),
              ),
              Container(
                child: Center(
                    child: Text(
                  description,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                width: double.infinity,
                margin: EdgeInsets.all(20),
              ),
              Container(
                child: Center(
                    child: Text(
                  chef,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                width: double.infinity,
                margin: EdgeInsets.all(20),
              ),
            ],

        ),

      ],
      ),
    );
  }
}
