import 'package:flutter/material.dart';
import 'package:food_app/models/explore_recipe.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card3({
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
            image: AssetImage('images/image3.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              // 3
              padding: const EdgeInsets.all(16),
              // 4
              child: Column(
                // 5
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // 6
                  Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7
                  SizedBox(height: 8),
                  // 8
                  Text('Recipe Trends'),
                  // 9
                  SizedBox(height: 30),
                ],
              ),
            ),

            // 10
            Center(
              // 11
              child: Wrap(
                // 12
                alignment: WrapAlignment.start,
                // 13
                spacing: 12,
                //14
                runSpacing: 12,
                // 15
                children: [
                  Chip(
                    label: const Text('Healthy'),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: const Text('Italian'),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: const Text('Pasta'),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: const Text('Spaghetti'),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: const Text('Spaghetti'),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: const Text('Spaghetti'),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: const Text('Spaghetti'),
                    backgroundColor: Colors.black.withOpacity(0.7),
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
