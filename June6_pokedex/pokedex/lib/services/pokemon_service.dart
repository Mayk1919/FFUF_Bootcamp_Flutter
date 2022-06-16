import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/utilities/string_extension.dart';

import 'api/pokemon_api.dart';

class PokemonService {
  static Future<List<Pokemon>?> fetchSearchPokemonList(
      String searchedPokemonName) async {
    final formattedSearchedPokemonName = searchedPokemonName.toLowerCase();
    final searchPokemonList =
        await PokemonApi.searchPokemon(formattedSearchedPokemonName);
    return searchPokemonList;
  }

  static Future<Pokemon?> fetchPokemonDetails({
    String? name,
    int? id,
  }) async {
    final formattedName = name!.inSmallCaps;
    final pokemon = await PokemonApi.fetchPokemonDetails(
      name: formattedName,
      id: id!,
    );
    return pokemon;
  }
}
