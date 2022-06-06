import 'package:flutter/material.dart';
import 'package:may10_shop/models/models.dart';
import 'package:may10_shop/components/card_tile.dart';
import 'package:may10_shop/screen/card_item_screen.dart';

class CardListScreen extends StatelessWidget {
  final CardManager manager;

  const CardListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.cardItems;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        // Set the number of items in the list
        itemBuilder: (context, index) {
          final item = groceryItems[index];
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
            onDismissed: (direction) {
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
              child: CardTile(
                item: item,
                key: Key(item.id),
                onComplete: (change) {
                  if (change != null) {
                    manager.completeItem(index, change);
                  }
                },
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardItemScreen(
                      originalItem: item,
                      onCreate: (item) {},
                      onUpdate: (item) {
                        manager.updateItem(item, index);
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
