import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokemon_list_page/pokemon_list_page_connector.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_arguments.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_connector.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PokemonListPageConnector.route:
        return MaterialPageRoute(builder: (_) => PokemonListPageConnector());

      case PokemonPageConnector.route:
        final args = settings.arguments as PokemonPageArguments;
        return MaterialPageRoute(
          builder: (_) => PokemonPageConnector(
            pokemon: args.pokemon,
            pokemonColor: args.mainTypeColor,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('Error: No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
