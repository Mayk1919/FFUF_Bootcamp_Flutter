// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_evolution_chain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonEvolutionChain _$_$_PokemonEvolutionChainFromJson(
    Map<String, dynamic> json) {
  return _$_PokemonEvolutionChain(
    chain: json['chain'] == null
        ? null
        : EvolvesTo.fromJson(json['chain'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonEvolutionChainToJson(
        _$_PokemonEvolutionChain instance) =>
    <String, dynamic>{
      'chain': instance.chain,
    };
