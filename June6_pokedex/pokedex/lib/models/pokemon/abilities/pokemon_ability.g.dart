// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonAbility _$_$_PokemonAbilityFromJson(Map<String, dynamic> json) {
  return _$_PokemonAbility(
    abilityInfo: json['ability'] == null
        ? null
        : AbilityInfo.fromJson(json['ability'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonAbilityToJson(_$_PokemonAbility instance) =>
    <String, dynamic>{
      'ability': instance.abilityInfo,
    };
