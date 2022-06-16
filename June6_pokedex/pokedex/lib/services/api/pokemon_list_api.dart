import 'package:dio/dio.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/simple_pokemon/simple_pokemon.dart';
import 'package:pokedex/models/simple_pokemon/simple_pokemon_list.dart';

import 'api_config.dart';

class PokemonListApi {
  static Future<SimplePokemonList?> fetchSimplePokemonList(
      {String? nextPageUrl}) async {
    try {
      final hasPaginatedUrl = nextPageUrl?.isNotEmpty ?? false;

      final fetchUrl = !hasPaginatedUrl ? initialFetchUrl : nextPageUrl;
      final response = await dio.get(fetchUrl!);
      final simplePokemonList =
          SimplePokemonList.fromJson(response.data as Map<String, dynamic>);
      return simplePokemonList;
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }

  static Future<List<Pokemon>?> fetchPokemonListDetails(
      List<SimplePokemon> simplePokemonList) async {
    try {
      final responses = await _fetchPokemonDetailsResponses(simplePokemonList);

      // Build list of fetched Pokemon.
      final pokemonDetailsList = <Pokemon>[];
      for (final response in responses) {
        final pokemon = Pokemon.fromJson(response.data as Map<String, dynamic>);
        pokemonDetailsList.add(pokemon);
      }

      return pokemonDetailsList;
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }

  static Future<List<Response>> _fetchPokemonDetailsResponses(
      List<SimplePokemon> simplePokemonList) async {
    final responses = <Future<Response>>[];
    for (var i = 0; i < simplePokemonList.length; ++i) {
      final fetchUrl = simplePokemonList[i].detailsUrl;
      final response = dio.get(fetchUrl);
      responses.add(response);
    }

    final results = await Future.wait(responses);

    return results;
  }
}
