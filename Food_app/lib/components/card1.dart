import 'package:flutter/material.dart';
import 'package:food_app/models/explore_recipe.dart';

class Card1 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card1({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final String category = 'Baker\'s choice!';
  final String title = 'The Art of Dough!';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Lunamarianne';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(children: [
          Positioned(
            child: Text(category),
          ),
          Positioned(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            top: 20,
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
              style: const TextStyle(
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
        ]),
        padding: const EdgeInsets.all(17),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/image1.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
