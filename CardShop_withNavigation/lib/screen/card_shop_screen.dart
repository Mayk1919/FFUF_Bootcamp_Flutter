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
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final manager = Provider.of<CardManager>(context, listen: false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CardItemScreen(
                onCreate: (item) {
                  manager.addItem(item);

                  Navigator.pop(context);
                },
                onUpdate: (item) {},
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {

    return Consumer<CardManager>(
      builder: (context, manager, child) {

        if (manager.cardItems.isNotEmpty) {
          return CardListScreen(manager: manager);
        } else {
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
