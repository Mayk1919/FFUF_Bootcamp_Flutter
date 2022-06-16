import 'package:pokedex/models/pokemon_evolution_chain/pokemon_evolution_chain.dart';
import 'package:pokedex/models/pokemon_species/pokemon_species.dart';

import 'api_config.dart';

class PokemonEvolutionApi {
  static Future<PokemonEvolutionChain?> fetchPokemonEvolutionChain({
    String? evolutionChainUrl,
    String? speciesUrl,
  }) async {
    try {
      final speciesResponse = await dio.get(speciesUrl!);
      final species =
          PokemonSpecies.fromJson(speciesResponse.data as Map<String, dynamic>);

      final response = await dio.get(species.evolutionChainUrl);
      final evolutionChain =
          PokemonEvolutionChain.fromJson(response.data as Map<String, dynamic>);
      return evolutionChain;
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }
}
