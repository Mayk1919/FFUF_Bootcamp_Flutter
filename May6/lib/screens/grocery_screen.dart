import 'package:flutter/material.dart';
import 'package:food_app/screens/empty_grocery_screen.dart';
import 'package:food_app/screens/grocery_item_screen.dart';
import 'package:provider/provider.dart';
import 'package:food_app/models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Todo 4: Add a scaffold widget
    // Main layout structure for GroceryScreen
    return Scaffold(
      // Tapping the button presents the screen to create or add an item
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Todo: Present GroceryItemScreen
          // returns the GroceryManager available in the tree
          final manager = Provider.of<GroceryManager>(context, listen: false);
          // Navigator.push() adds a new route to the stack of routes
          Navigator.push(
            context,
            // MaterialPageRoute replaces the entire screen with a platform-specific transition.
            MaterialPageRoute(
              // Creates a new GroceryItemScreen within the route's builder callback
              builder: (context) => GroceryItemScreen(
                // addItem() adds this new item to the list of items
                onCreate: (item) {
                  manager.addItem(item);
                  // Once the item is added to the list, pop removes the top navigation route item,
                  // GroceryItemScreen, to show the list of grocery items.
                  Navigator.pop(context);
                },
                // onUpdate will never get called since you are creating a new item
                onUpdate: (item) {},
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: buildGroceryScreen(),
    );
  }

  // Todo: Add buildGroceryScreen
  Widget buildGroceryScreen() {
    // We wrap the widgets inside a Consumer, which listens
    // for GroceryManager state changes
    return Consumer<GroceryManager>(
      // Consumer rebuilds the widgets below itself when grocery manager items changes
      builder: (context, manager, child) {
        // if there are grocery items in the list, show the GroceryListScreen
        // if there are no grocery items, show the EmptyGroceryScreen
        if (manager.groceryItems.isNotEmpty) {
          // Todo: Add GroceryListScreen
          return Container();
        } else {
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
