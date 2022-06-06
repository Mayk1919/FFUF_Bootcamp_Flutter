class FeaturedExpansion {
  int id;
  String name;
  String series;
  int numberOfCards;
  List cardRarityCount;
  String mostExpensiveCard;

  FeaturedExpansion({
    required this.id,
    required this.name,
    this.series = '',
    this.numberOfCards = 0,
    this.cardRarityCount = const [],
    this.mostExpensiveCard = '',
  });

  factory FeaturedExpansion.fromJson(Map<String, dynamic> json) {
    return FeaturedExpansion(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      series: json['series'] ?? '',
      numberOfCards: json['numberOfCards'] ?? '',
      cardRarityCount: json['cardRarityCount'] ?? '',
      mostExpensiveCard: json['mostExpensiveCard'] ?? '',
    );
  }
}
