// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_move.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonMove _$_$_PokemonMoveFromJson(Map<String, dynamic> json) {
  return _$_PokemonMove(
    moveInfo: json['move'] == null
        ? null
        : MoveInfo.fromJson(json['move'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonMoveToJson(_$_PokemonMove instance) =>
    <String, dynamic>{
      'move': instance.moveInfo,
    };
