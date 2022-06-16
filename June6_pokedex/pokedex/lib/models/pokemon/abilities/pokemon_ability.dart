import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ability_info.dart';

part 'pokemon_ability.freezed.dart';

part 'pokemon_ability.g.dart';

@freezed
abstract class PokemonAbility with _$PokemonAbility {
  factory PokemonAbility({@JsonKey(name: 'ability') AbilityInfo abilityInfo}) =
      _PokemonAbility;

  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);
}

extension NestedPropertyAccess on PokemonAbility {
  String get name => abilityInfo.name;
}
