import 'package:flutter/material.dart';
import 'package:food_app/models/models.dart';
import 'package:food_app/components/grocery_tile.dart';
import 'package:food_app/screens/grocery_item_screen.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;

  const GroceryListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Todo: Replace with ListView
    // Get the list of grocery items from the manager
    final groceryItems = manager.groceryItems;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        // Set the number of items in the list
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          // Todo: Wrap in a Dismissible
          // Todo: Wrap in an Inkwell
          // Inkwell: Provides animated ripple feedback.
          // For each item in the list, get the current item
          // and construct a GroceryTile
          return Dismissible(
            key: Key(item.id),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.delete_forever_rounded,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            // onDismissed let us know when the user swiped away a GroceryTile
            onDismissed: (direction) {
              // Lets the grocery manager handle deleting the item, given an index
              manager.deleteItem(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${item.name} removed'),
                  duration: const Duration(seconds: 5),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      manager.addItem(item);
                    },
                  ),
                ),
              );
            },
            child: InkWell(
              child: GroceryTile(
                item: item,
                key: Key(item.id),
                // Return onComplete when the user taps the checkbox
                onComplete: (change) {
                  // Check if there is a change and update the item's isComplete status.
                  if (change != null) {
                    manager.completeItem(index, change);
                  }
                },
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroceryItemScreen(
                      originalItem: item,
                      // onCreate will not be called since you are updating an existing item
                      onCreate: (item) {},
                      // GroceryItemScreen calls onUpdate when the user updates an item
                      onUpdate: (item) {
                        // GroceryManager updates the item at the particular index
                        manager.updateItem(item, index);
                        // Dismisses GroceryItemScreen
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16.0);
        },
        itemCount: groceryItems.length,
      ),
    );
  }
}
