import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/pokemon/types/pokemon_type.dart';
import 'package:pokedex/pages/pokemon_list_page/pokemon_list_card/pokemon_list_card.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_arguments.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_connector.dart';
import 'package:pokedex/utilities/color_utilities.dart';
import 'package:pokedex/utilities/global_constants.dart';
import 'package:pokedex/utilities/pokemon_color_picker.dart';

class PokemonSearchResultsGrid extends StatelessWidget {
  const PokemonSearchResultsGrid({required this.searchResultList});

  final List<Pokemon> searchResultList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: searchResultList.length,
      gridDelegate: kPokemonGridDelegate,
      itemBuilder: (context, index) {
        final pokemon = searchResultList[index];
        final color = PokemonColorPicker.getColor(pokemon.typeList[0].name);
        final pokemonColor = Theme.of(context).brightness == Brightness.dark
            ? darken(color)
            : color;
        return PokemonListCard(
          pokemon: pokemon,
          onTap: () {
            Navigator.pushNamed(
              context,
              PokemonPageConnector.route,
              arguments: PokemonPageArguments(
                pokemon: pokemon,
                mainTypeColor: pokemonColor,
              ),
            );
          },
        );
      },
    );
  }
}
