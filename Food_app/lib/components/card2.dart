import 'package:flutter/material.dart';
import 'package:food_app/components/author_card.dart';
import 'package:food_app/models/explore_recipe.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card2({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image2.jpeg'),
            fit: BoxFit.cover,
          ),
          boxShadow: [BoxShadow(color: Colors.pink, spreadRadius: 3)],
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Lunamarianne Perez',
              title: 'Head Chef',
              imageProvider: AssetImage('images/luna.PNG'),
            ),
            // TODO 4: add Positioned text
            // 1
            Expanded(
              // 2
              child: Stack(
                children: [
                  // 3
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: TextStyle(fontSize: 28, backgroundColor: Colors.pink),
                    ),
                  ),
                  // 4
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: TextStyle(fontSize: 28, backgroundColor: Colors.pink),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
