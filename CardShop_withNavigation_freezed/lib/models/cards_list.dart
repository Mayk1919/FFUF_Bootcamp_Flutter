class CardsList {
  int id;
  double price;
  String name;
  String evolutionStage;
  String evolveFrom;
  String type;
  int hp;
  String weakness;
  String resistance;
  List retreatCost;
  String cardNumber;
  String rarity;
  String expansion;
  Map ability;
  List attacks;
  String imageUrl;

  CardsList({
    required this.id,
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
  });

  factory CardsList.fromJson(Map<String, dynamic> json) {
    return CardsList(
      id: json['id'] ?? '',
      price: json['price'] ?? '',
      name: json['name'] ?? '',
      evolutionStage: json['evolutionStage'] ?? '',
      evolveFrom: json['evolveFrom'] ?? '',
      type: json['type'] ?? '',
      hp: json['hp'] ?? '',
      weakness: json['weakness'] ?? '',
      resistance: json['resistance'] ?? '',
      retreatCost: json['retreatCost'] ?? '',
      cardNumber: json['cardNumber'] ?? '',
      rarity: json['rarity'] ?? '',
      expansion: json['expansion'] ?? '',
      ability: json['ability'] ?? '',
      attacks: json['attacks'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
