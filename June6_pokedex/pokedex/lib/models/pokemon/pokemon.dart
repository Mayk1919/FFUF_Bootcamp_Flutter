import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/models/pokemon/sprite/pokemon_sprites.dart';

import 'abilities/pokemon_ability.dart';
import 'base_stats/pokemon_base_stat.dart';
import 'moves/pokemon_move.dart';
import 'species/species_info.dart';
import 'types/pokemon_type.dart';

part 'pokemon.freezed.dart';

part 'pokemon.g.dart';

@freezed
abstract class Pokemon with _$Pokemon {
  factory Pokemon({
    @required @JsonKey(name: 'id') int id,
    @required @JsonKey(name: 'name') String name,
    @required @JsonKey(name: 'sprites') PokemonSprites sprites,
    @required @JsonKey(name: 'types') List<PokemonType> typeList,
    @required @JsonKey(name: 'abilities') List<PokemonAbility> abilityList,
    @required @JsonKey(name: 'height') int heightInDecimeters,
    @required @JsonKey(name: 'weight') int weightInDecimeters,
    @required @JsonKey(name: 'base_experience') int baseExperience,
    @required @JsonKey(name: 'stats') List<PokemonBaseStat> baseStatList,
    @required @JsonKey(name: 'species') SpeciesInfo speciesInfo,
    @required @JsonKey(name: 'moves') List<PokemonMove> moveList,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

extension NestedPropertyAccess on Pokemon {
  String get imageUrl => sprites.otherSprites.officialArtwork.imageUrl;

  String get speciesUrl => speciesInfo.detailsUrl;

  int get hpBaseStat => baseStatList[0].baseStat;

  int get attackBaseStat => baseStatList[1].baseStat;

  int get defenseBaseStat => baseStatList[2].baseStat;

  int get specialAttackBaseStat => baseStatList[3].baseStat;

  int get specialDefenseBaseStat => baseStatList[4].baseStat;

  int get speedBaseStat => baseStatList[5].baseStat;
}
