import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'simple_pokemon.freezed.dart';

part 'simple_pokemon.g.dart';

@freezed
abstract class SimplePokemon with _$SimplePokemon {
  factory SimplePokemon({
    @required @JsonKey(name: 'name') String name,
    @required @JsonKey(name: 'url') String detailsUrl,
  }) = _SimplePokemon;

  factory SimplePokemon.fromJson(Map<String, dynamic> json) =>
      _$SimplePokemonFromJson(json);
}
