import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'evolution_chain_info/evolution_chain_info.dart';
import 'flavor_text_entry/flavor_text_entry.dart';

part 'pokemon_species.freezed.dart';

part 'pokemon_species.g.dart';

@freezed
abstract class PokemonSpecies with _$PokemonSpecies {
  factory PokemonSpecies({
    @JsonKey(name: 'evolution_chain') EvolutionChainInfo evolutionChainInfo,
    @JsonKey(name: 'flavor_text_entries')
        List<FlavorTextEntry> flavorTextEntries,
  }) = _PokemonSpecies;

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesFromJson(json);
}

extension NestedPropertyAccess on PokemonSpecies {
  String get flavorTextEnglish => flavorTextEntries
      .firstWhere((flavorText) => flavorText.languageInfo.name == 'en')
      .flavorText
      .replaceAll('\n', ' ')
      .replaceAll('\u000c', ' ');

  String get evolutionChainUrl => evolutionChainInfo.url;
}
