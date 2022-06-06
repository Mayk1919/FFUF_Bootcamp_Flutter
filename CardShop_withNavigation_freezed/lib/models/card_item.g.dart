// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardItem _$$_CardItemFromJson(Map<String, dynamic> json) => _$_CardItem(
      id: json['id'] as String,
      cardId: json['cardId'] as int,
      price: (json['price'] as num).toDouble(),
      name: json['name'] as String,
      evolutionStage: json['evolutionStage'] as String,
      evolveFrom: json['evolveFrom'] as String,
      type: json['type'] as String,
      hp: json['hp'] as int,
      weakness: json['weakness'] as String,
      resistance: json['resistance'] as String,
      retreatCost: json['retreatCost'] as List<dynamic>,
      cardNumber: json['cardNumber'] as String,
      rarity: json['rarity'] as String,
      expansion: json['expansion'] as String,
      ability: json['ability'] as Map<String, dynamic>,
      attacks: json['attacks'] as List<dynamic>,
      imageUrl: json['imageUrl'] as String,
      isComplete: json['isComplete'] as bool,
      date: DateTime.parse(json['date'] as String),
      quantity: json['quantity'] as int,
      backgroundColor:
          const ColorSerialiser().fromJson(json['backgroundColor'] as int),
      color: const ColorSerialiser().fromJson(json['color'] as int),
    );

Map<String, dynamic> _$$_CardItemToJson(_$_CardItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardId': instance.cardId,
      'price': instance.price,
      'name': instance.name,
      'evolutionStage': instance.evolutionStage,
      'evolveFrom': instance.evolveFrom,
      'type': instance.type,
      'hp': instance.hp,
      'weakness': instance.weakness,
      'resistance': instance.resistance,
      'retreatCost': instance.retreatCost,
      'cardNumber': instance.cardNumber,
      'rarity': instance.rarity,
      'expansion': instance.expansion,
      'ability': instance.ability,
      'attacks': instance.attacks,
      'imageUrl': instance.imageUrl,
      'isComplete': instance.isComplete,
      'date': instance.date.toIso8601String(),
      'quantity': instance.quantity,
      'backgroundColor':
          const ColorSerialiser().toJson(instance.backgroundColor),
      'color': const ColorSerialiser().toJson(instance.color),
    };
