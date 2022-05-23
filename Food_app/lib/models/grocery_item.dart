import 'dart:ui';

// Importance is an enum that you'll use to tag the importance of an item:
// low, medium, high
enum Importance {
  LOW,
  MEDIUM,
  HIGH,
}

// Each groceryItem must have a unique id to differentiate the items from one another
class GroceryItem {
  // A user can set the name, level of importance, color label, quantity and date
  // as well as marking completed items
  final String id;
  final String name;
  final Importance importance;
  final Color color;
  final int quantity;
  final DateTime date;
  final bool isComplete;

  GroceryItem({
    required this.id,
    required this.name,
    required this.importance,
    required this.color,
    required this.quantity,
    required this.date,
    this.isComplete = false,
  });

  // copyWith copies and creates a completely new instance of GroceryItem.
  // This one is useful when you manage the state of the items.
  GroceryItem copyWith({
    String? id,
    String? name,
    Importance? importance,
    Color? color,
    int? quantity,
    DateTime? date,
    bool? isComplete,
  }) {
    return GroceryItem(
      id: id ?? this.id,
      name: name ?? this.name,
      importance: importance ?? this.importance,
      color: color ?? this.color,
      quantity: quantity ?? this.quantity,
      date: date ?? this.date,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
