import 'package:flutter/material.dart';
import 'package:may10_shop/screen/empty_grocery_screen.dart';
import 'package:may10_shop/screen/card_item_screen.dart';
import 'package:provider/provider.dart';
import 'package:may10_shop/models/models.dart';
import 'package:may10_shop/screen/card_list_screen.dart';

class CardShopScreen extends StatelessWidget {
  const CardShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Todo 4: Add a scaffold widget
    // Main layout structure for GroceryScreen
    return Scaffold(
      backgroundColor: Colors.transparent,
      // Tapping the button presents the screen to create or add an item
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Todo: Present GroceryItemScreen
          // returns the GroceryManager available in the tree
          final manager = Provider.of<CardManager>(context, listen: false);
          // Navigator.push() adds a new route to the stack of routes
          Navigator.push(
            context,
            // MaterialPageRoute replaces the entire screen with a platform-specific transition.
            MaterialPageRoute(
              // Creates a new GroceryItemScreen within the route's builder callback
              builder: (context) => CardItemScreen(
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
    return Consumer<CardManager>(
      // Consumer rebuilds the widgets below itself when grocery manager items changes
      builder: (context, manager, child) {
        // if there are grocery items in the list, show the GroceryListScreen
        // if there are no grocery items, show the EmptyGroceryScreen
        if (manager.cardItems.isNotEmpty) {
          // Todo: Add GroceryListScreen
          return CardListScreen(manager: manager);
        } else {
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
