import 'package:flutter/material.dart';

class Expansion1 extends StatelessWidget {
  const Expansion1({Key? key}) : super(key: key);

  final String title = 'Shining Fates';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 550,
      color: Colors.white,

      child: Card(
        elevation: 15,
        shadowColor: Colors.blue,
        margin: const EdgeInsets.all(10),
        shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue)
        ),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                // Stroked text as border.
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue,
                  ),
                ),
                // Solid text as fill.
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellow[300],
                  ),
                ),
              ],
            ),
        Container(
          padding: const EdgeInsets.all(20.0),
              constraints: const BoxConstraints.expand(
                width: 300,
                height: 300,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('card_page_pics/shining_fates.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
