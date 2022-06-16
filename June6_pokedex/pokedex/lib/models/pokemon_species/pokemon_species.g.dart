// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonSpecies _$_$_PokemonSpeciesFromJson(Map<String, dynamic> json) {
  return _$_PokemonSpecies(
    evolutionChainInfo: json['evolution_chain'] == null
        ? null
        : EvolutionChainInfo.fromJson(
            json['evolution_chain'] as Map<String, dynamic>),
    flavorTextEntries: (json['flavor_text_entries'] as List)
        ?.map((e) => e == null
            ? null
            : FlavorTextEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PokemonSpeciesToJson(_$_PokemonSpecies instance) =>
    <String, dynamic>{
      'evolution_chain': instance.evolutionChainInfo,
      'flavor_text_entries': instance.flavorTextEntries,
    };
