import 'package:pokedex/models/pokemon_species/pokemon_species.dart';
import 'package:pokedex/services/api/api_config.dart';

class PokemonSpeciesApi {
  static Future<PokemonSpecies?> fetchPokemonSpecies({String? speciesUrl}) async {
    try {
      final response = await dio.get(speciesUrl!);
      final pokemonSpecies =
          PokemonSpecies.fromJson(response.data as Map<String, dynamic>);
      return pokemonSpecies;
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }
}
