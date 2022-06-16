// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonType _$_$_PokemonTypeFromJson(Map<String, dynamic> json) {
  return _$_PokemonType(
    slot: json['slot'] as int,
    typeInfo: json['type'] == null
        ? null
        : TypeInfo.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonTypeToJson(_$_PokemonType instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.typeInfo,
    };
