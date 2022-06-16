import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/simple_pokemon/simple_pokemon.dart';

part 'simple_pokemon_list.freezed.dart';

part 'simple_pokemon_list.g.dart';

@freezed
abstract class SimplePokemonList with _$SimplePokemonList {
  factory SimplePokemonList({
     @JsonKey(name: 'count')required int count,
     @JsonKey(name: 'next', nullable: true)required String next,
     @JsonKey(name: 'previous', nullable: true)required String previous,
     @JsonKey(name: 'results')required List<SimplePokemon> simplePokemonList,
  }) = _SimplePokemonList;

  factory SimplePokemonList.fromJson(Map<String, dynamic> json) =>
      _$SimplePokemonListFromJson(json);
}
