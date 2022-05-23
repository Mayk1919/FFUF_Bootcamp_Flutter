import 'dart:ui';

// Importance is an enum that you'll use to tag the importance of an item:
// low, medium, high


// Each CardItem must have a unique id to differentiate the items from one another
class CardItem {
  // A user can set the name, level of importance, color label, quantity and date
  // as well as marking completed items

  final String id;
  final int cardId;
  final double price;
  final String name;
  final String evolutionStage;
  final String evolveFrom;
  final String type;
  final int hp;
  final String weakness;
  final String resistance;
  final List retreatCost;
  final String cardNumber;
  final String rarity;
  final String expansion;
  final Map ability;
  final List attacks;
  final String imageUrl;
  final bool isComplete;
  final DateTime date;
  final int quantity;
  final Color color;
  final Color backgroundColor;

  CardItem({
    required this.id,
    required this.cardId,
    required this.price,
    required this.name,
    required this.evolutionStage,
    required this.evolveFrom,
    required this.type,
    required this.hp,
    required this.weakness,
    required this.resistance,
    required this.retreatCost,
    required this.cardNumber,
    required this.rarity,
    required this.expansion,
    required this.ability,
    required this.attacks,
    required this.imageUrl,
    required this.isComplete,
    required this.date,
    required this.quantity,
    required this.color,
    required this.backgroundColor,
  });

  // copyWith copies and creates a completely new instance of CardItem.
  // This one is useful when you manage the state of the items.
  CardItem copyWith({
    String? id,
    int? cardId,
    double? price,
    String? name,
    String? evolutionStage,
    String? evolveFrom,
    String? type,
    int? hp,
    String? weakness,
    String? resistance,
    List? retreatCost,
    String? cardNumber,
    String? rarity,
    String? expansion,
    Map? ability,
    List? attacks,
    String? imageUrl,
    bool? isComplete,
    DateTime? date,
    int? quantity,
    Color? color,
    Color? backgroundColor,
  }) {
    return CardItem(
      id: id ?? this.id,
      cardId: cardId ?? this.cardId,
      price: price ?? this.price,
      name: name ?? this.name,
      evolutionStage: evolutionStage ?? this.evolutionStage,
      evolveFrom: evolveFrom ?? this.evolveFrom,
      type: type ?? this.type,
      hp: hp ?? this.hp,
      weakness: weakness ?? this.weakness,
      resistance: resistance ?? this.resistance,
      retreatCost: retreatCost ?? this.retreatCost,
      cardNumber: cardNumber ?? this.cardNumber,
      rarity: rarity ?? this.rarity,
      expansion: expansion ?? this.expansion,
      ability: ability ?? this.ability,
      attacks: attacks ?? this.attacks,
      imageUrl: imageUrl ?? this.imageUrl,
      isComplete: isComplete ?? this.isComplete,
      date: date ?? this.date,
      quantity: quantity ?? this.quantity,
      color: color ?? this.color,
      backgroundColor: color ?? this.backgroundColor,
    );
  }
}
