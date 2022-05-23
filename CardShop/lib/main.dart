import 'package:flutter/material.dart';
import 'package:may10_shop/home.dart';
import 'package:provider/provider.dart';
import 'package:may10_shop/models/models.dart';

void main() {
  runApp(const CardShopApp());
}

class CardShopApp extends StatelessWidget {
  const CardShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Card Shop App',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          // Todo 10: Add GroceryManager Provider
          // All descendant widgets of FoodApp can now listen to or access GroceryManager
          ChangeNotifierProvider(create: (context) => CardManager())
        ],


      child: const Home(),
      )
    );
  }
}
