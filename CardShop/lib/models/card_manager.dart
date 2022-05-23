import 'package:flutter/material.dart';
import 'package:may10_shop/models/card_item.dart';



class CardManager extends ChangeNotifier {
  // This manager holds a private array of _cardItems
  // Only the manager can change and update grocery items
  final _cardItems = <CardItem>[];

  // Provides a public getter method for cardItems, which is unmodifiable.
  // External entities can only read the list of grocery items
  List<CardItem> get cardItems => List.unmodifiable(_cardItems);

  // deleteItem() deletes an item at a particular index
  void deleteItem(int index) {
    _cardItems.removeAt(index);
    notifyListeners();
  }

  // addItem() adds a new grocery item at the end of the list
  void addItem(CardItem item) {
    _cardItems.add(item);
    notifyListeners();
  }

  // updateItem() replaces the old item at a given index with a new item.
  void updateItem(CardItem item, int index) {
    _cardItems[index] = item;
    notifyListeners();
  }

  // completeITem() toggles the isComplete flag on and off
  void completeItem(int index, bool change) {
    final item = _cardItems[index];
    _cardItems[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }
}
