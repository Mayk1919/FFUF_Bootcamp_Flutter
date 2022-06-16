import 'package:dio/dio.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/pokemon_evolution_chain/evolves_to.dart';
import 'package:pokedex/models/pokemon_evolution_chain/pokemon_evolution_chain.dart';

import 'api/api_config.dart';
import 'api/pokemon_evolution_api.dart';

class PokemonEvolutionChainService {
  static Future<PokemonEvolutionChain?> fetchEvolutionChain({
    String? evolutionChainUrl,
    String? speciesUrl,
  }) async {
    final evolutionChain =
        await PokemonEvolutionApi.fetchPokemonEvolutionChain(
      evolutionChainUrl: evolutionChainUrl!,
      speciesUrl: speciesUrl!,
    );
    return evolutionChain;
  }

  static Future<List<Pokemon>> fetchEvolutionDetails(
      {PokemonEvolutionChain? chain}) async {
    final evolutionChainDetails = <Pokemon>[];

    final hasStage2Evolutions = chain!.hasStage2Evolutions;
    final stage2Evolutions = chain.stage2Evolutions;
    final hasStage3Evolutions = chain.hasStage3Evolutions;
    final stage3Evolutions = chain.stage3Evolutions;

    final futureResponses = <Future<Response>>[];

    // 1st pokemon
    var fetchPokemonUrl = '$baseUrl/pokemon/${chain.chain.speciesName}';
    futureResponses.add(dio.get(fetchPokemonUrl));

    // stage 2 evolutions
    if (hasStage2Evolutions) {
      for (final stage2Evolution in stage2Evolutions) {
        fetchPokemonUrl = '$baseUrl/pokemon/${stage2Evolution.speciesName}';
        futureResponses.add(dio.get(fetchPokemonUrl));
      }
    }

    // stage 3 evolutions
    if (hasStage3Evolutions) {
      for (final stage3Evolution in stage3Evolutions) {
        fetchPokemonUrl = '$baseUrl/pokemon/${stage3Evolution.speciesName}';
        futureResponses.add(dio.get(fetchPokemonUrl));
      }
    }

    final responses = await Future.wait(futureResponses);

    // base pokemon
    final pokemon = Pokemon.fromJson(responses[0].data as Map<String, dynamic>);
    evolutionChainDetails.add(pokemon);

    // stage 2 evolutions
    for (var i = 0; i < stage2Evolutions.length; ++i) {
      final index = 1 + i;
      final pokemon =
          Pokemon.fromJson(responses[index].data as Map<String, dynamic>);
      evolutionChainDetails.add(pokemon);
    }

    for (var i = 0; i < stage3Evolutions.length; ++i) {
      final index = 1 + stage2Evolutions.length + i;
      final pokemon =
          Pokemon.fromJson(responses[index].data as Map<String, dynamic>);
      evolutionChainDetails.add(pokemon);
    }

    return evolutionChainDetails;
  }
}
