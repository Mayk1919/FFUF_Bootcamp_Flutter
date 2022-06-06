import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:may10_shop/models/json_converter.dart';

part 'card_item.freezed.dart';
part 'card_item.g.dart';

@Freezed()

class CardItem with _$CardItem{

factory CardItem({
  required String id,
  required int cardId,
  required double price,
  required String name,
  required String evolutionStage,
  required String evolveFrom,
  required String type,
  required int hp,
  required String weakness,
  required String resistance,
  required List retreatCost,
  required String cardNumber,
  required String rarity,
  required String expansion,
  required Map ability,
  required List attacks,
  required String imageUrl,
  required bool isComplete,
  required DateTime date,
  required int quantity,
  //required Color color,
  //required Color backgroundColor,
  @ColorSerialiser()required Color backgroundColor,
  @ColorSerialiser()required Color color,
  }) = _CardItem;

  factory CardItem.fromJson(Map<String,dynamic> json) =>
  _$CardItemFromJson(json);
}
