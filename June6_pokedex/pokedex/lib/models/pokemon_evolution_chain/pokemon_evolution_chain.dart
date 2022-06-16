import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'evolves_to.dart';

part 'pokemon_evolution_chain.freezed.dart';

part 'pokemon_evolution_chain.g.dart';

@freezed
abstract class PokemonEvolutionChain with _$PokemonEvolutionChain {
  factory PokemonEvolutionChain({@JsonKey(name: 'chain') EvolvesTo chain}) =
      _PokemonEvolutionChain;

  factory PokemonEvolutionChain.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionChainFromJson(json);
}

extension NestedPropertyAccess on PokemonEvolutionChain {
  bool get hasStage2Evolutions => chain.evolutions?.isNotEmpty ?? false;

  List<EvolvesTo> get stage2Evolutions =>
      hasStage2Evolutions ? chain.evolutions : [];

  bool get hasStage3Evolutions =>
      hasStage2Evolutions &&
      (stage2Evolutions[0].evolutions?.isNotEmpty ?? false);

  List<EvolvesTo> get stage3Evolutions {
    final stage3Evolutions = <EvolvesTo>[];
    if (hasStage3Evolutions) {
      for (final evolution in stage2Evolutions) {
        for (final stage3Evolution in evolution.evolutions) {
          stage3Evolutions.add(stage3Evolution);
        }
      }
    }
    return stage3Evolutions;
  }
}
