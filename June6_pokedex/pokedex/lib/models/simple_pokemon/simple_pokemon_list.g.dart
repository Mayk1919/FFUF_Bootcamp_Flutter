// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_pokemon_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimplePokemonList _$_$_SimplePokemonListFromJson(Map<String, dynamic> json) {
  return _$_SimplePokemonList(
    count: json['count'] as int,
    next: json['next'] as String,
    previous: json['previous'] as String,
    simplePokemonList: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : SimplePokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SimplePokemonListToJson(
        _$_SimplePokemonList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.simplePokemonList,
    };
