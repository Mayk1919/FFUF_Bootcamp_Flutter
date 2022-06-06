import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:may10_shop/models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  'food_app_assets/empty_list.png',
                ),
              ),
            ),
            const Text(
              'Your Cart is Empty',
              style: TextStyle(fontSize: 21.0),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'Shopping for cards?\n'
              'Tap the + button to add them down.',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
                textColor: Colors.white,
                child: const Text(
                  'Browse Cards',
                ),
                color: Colors.green,
                onPressed: () {
                  Provider.of<TabManager>(context, listen: false).goToRecipes();
                }),
          ],
        ),
      ),
    );
  }
}
