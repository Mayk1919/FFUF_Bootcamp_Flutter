import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food_app/models/models.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Todo 3: Replace and add layout widgets
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Todo 4: Add empty image
            // Flexible gives a child ability to fill the available space in the main axis
            Flexible(
              // AspectRatio sizes its child to specified aspectRatio, width / height
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  'assets/food_app_assets/empty_list.png',
                ),
              ),
            ),
            // Todo 5: Add empty screen title
            const Text(
              'No Groceries',
              style: TextStyle(fontSize: 21.0),
            ),
            // Todo 6: Add empty screen subtitle
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down.',
              textAlign: TextAlign.center,
            ),
            // Todo 7: Add browse recipes button
            MaterialButton(
                textColor: Colors.white,
                child: const Text(
                  'Browse Recipes',
                ),
                color: Colors.green,
                onPressed: () {
                  // Todo 8: Go to Recipes Tab
                  // Here you use Provider.of() to access the model object, TabManager.
                  // goToRecipes() sets the index to the Recipes tab.
                  // This notifies Consumer to rebuild Home with the right tab index.
                  Provider.of<TabManager>(context, listen: false).goToRecipes();
                }),
          ],
        ),
      ),
    );
  }
}
// Provider Overview
// Provider is a convenient way to pass state down the widget tree and rebuild your UI when changes occur.
// Four concepts:
// 1. ChangeNotifier is extended by a class to provide change notifications to its listeners.
// 2. ChangeNotifierProvider listens for changes to a ChangeNotifier. Widgets below it can access the state object
// and listen to state changes.
// 3. Consumer wraps around part of a widget tree. It rebuilds part of a subtree when the state it listens to changes.
// 4. Provider.of allows descendant widgets to access the state object.
