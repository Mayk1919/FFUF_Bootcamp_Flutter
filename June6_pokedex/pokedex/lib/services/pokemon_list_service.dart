import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/simple_pokemon/simple_pokemon.dart';
import 'package:pokedex/models/simple_pokemon/simple_pokemon_list.dart';

import 'api/pokemon_list_api.dart';

class PokemonListService {
  static Future<SimplePokemonList> fetchSimplePokemonList(
      {String? nextPageUrl}) async {
    SimplePokemonList simplePokemonList;
    if (nextPageUrl != null && nextPageUrl.isNotEmpty) {
      simplePokemonList =
          (await PokemonListApi.fetchSimplePokemonList(nextPageUrl: nextPageUrl))!;
    } else {
      simplePokemonList = (await PokemonListApi.fetchSimplePokemonList())!;
    }
    return simplePokemonList;
  }

  static Future<List<Pokemon>?> fetchPokemonListDetails(
      List<SimplePokemon> simplePokemonList) async {
    final pokemonList =
        await PokemonListApi.fetchPokemonListDetails(simplePokemonList);
    return pokemonList;
  }
}
