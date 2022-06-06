import 'package:flutter/material.dart';
import 'package:may10_shop/models/card_item.dart';

class CardManager extends ChangeNotifier {
  final _cardItems = <CardItem>[];

  List<CardItem> get cardItems => List.unmodifiable(_cardItems);

  void deleteItem(int index) {
    _cardItems.removeAt(index);
    notifyListeners();
  }

  void addItem(CardItem item) {
    _cardItems.add(item);
    notifyListeners();
  }

  void updateItem(CardItem item, int index) {
    _cardItems[index] = item;
    notifyListeners();
  }

  void completeItem(int index, bool change) {
    final item = _cardItems[index];
    _cardItems[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }
}
