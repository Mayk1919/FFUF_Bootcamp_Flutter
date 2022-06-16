// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$_$_PokemonFromJson(Map<String, dynamic> json) {
  return _$_Pokemon(
    id: json['id'] as int,
    name: json['name'] as String,
    sprites: json['sprites'] == null
        ? null
        : PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
    typeList: (json['types'] as List)
        ?.map((e) =>
            e == null ? null : PokemonType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    abilityList: (json['abilities'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonAbility.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    heightInDecimeters: json['height'] as int,
    weightInDecimeters: json['weight'] as int,
    baseExperience: json['base_experience'] as int,
    baseStatList: (json['stats'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonBaseStat.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    speciesInfo: json['species'] == null
        ? null
        : SpeciesInfo.fromJson(json['species'] as Map<String, dynamic>),
    moveList: (json['moves'] as List)
        ?.map((e) =>
            e == null ? null : PokemonMove.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sprites': instance.sprites,
      'types': instance.typeList,
      'abilities': instance.abilityList,
      'height': instance.heightInDecimeters,
      'weight': instance.weightInDecimeters,
      'base_experience': instance.baseExperience,
      'stats': instance.baseStatList,
      'species': instance.speciesInfo,
      'moves': instance.moveList,
    };
