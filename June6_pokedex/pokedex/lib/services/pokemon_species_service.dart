import 'package:pokedex/models/pokemon_species/pokemon_species.dart';

import 'api/pokemon_species_api.dart';

class PokemonSpeciesService {
  static Future<PokemonSpecies?> fetchPokemonSpecies({String? speciesUrl}) async {
    final pokemonSpecies =
        await PokemonSpeciesApi.fetchPokemonSpecies(speciesUrl: speciesUrl!);
    return pokemonSpecies;
  }
}
