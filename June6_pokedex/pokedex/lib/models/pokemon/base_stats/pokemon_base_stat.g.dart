// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_base_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonBaseStat _$_$_PokemonBaseStatFromJson(Map<String, dynamic> json) {
  return _$_PokemonBaseStat(
    baseStat: json['base_stat'] as int,
    statInfo: json['stat'] == null
        ? null
        : StatInfo.fromJson(json['stat'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonBaseStatToJson(_$_PokemonBaseStat instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.statInfo,
    };
