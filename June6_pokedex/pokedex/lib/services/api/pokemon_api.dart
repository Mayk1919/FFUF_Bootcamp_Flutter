import 'package:dio/dio.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';

import 'package:pokedex/services/api/api_config.dart';

// ignore: avoid_classes_with_only_static_members
class PokemonApi {
  static const path = '/pokemon';
  static CancelToken cancelToken = CancelToken();

  static void cancel() {
    cancelToken.cancel('cancel search');
    setupCancelToken();
  }

  static void setupCancelToken() => cancelToken = CancelToken();

  static Future<List<Pokemon>?> searchPokemon(String pokemonName) async {
    try {
      final fetchUrl = '$baseUrl/$path/$pokemonName';
      cancel();
      final response = await dio.get(fetchUrl, cancelToken: cancelToken);
      final pokemon = Pokemon.fromJson(response.data as Map<String, dynamic>);
      final searchResultList = [pokemon];
      return searchResultList;
    } on Exception catch (e) {
      if (e is DioError) {
        if (CancelToken.isCancel(e)) {
          return null;
        } else if (e.response!.statusCode == 404) {
          return [];
        }
      }
    }
    return null;
  }

  static Future<Pokemon?> fetchPokemonDetails({
    String? name,
    int? id,
  }) async {
    try {
      final fetchPokemonUrl = (name?.isNotEmpty ?? false) ? '$baseUrl/$path/$name' : '$baseUrl/$path/$id';

      final response = await dio.get(fetchPokemonUrl);
      final pokemon = Pokemon.fromJson(response.data as Map<String, dynamic>);
      return pokemon;
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }
}
