import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/pokemon_page_details_connector.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_header/pokemon_page_header.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_header/widgets/pokemon_image.dart';
import 'package:pokedex/utilities/color_utilities.dart';
import 'package:pokedex/widgets/scaffold_with_custom_color.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({
    this.pokemon,
    this.pokemonColor,
  });

  final Pokemon? pokemon;
  final Color? pokemonColor;

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithCustomColor(
      color: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? darken(pokemonColor!)
          : pokemonColor,
      child: Stack(
        children: [
          Column(
            children: [
              PokemonPageHeader(pokemon: pokemon!),
              PokemonPageDetailsConnector(
                pokemon: pokemon,
                pokemonColor: pokemonColor,
              ),
            ],
          ),
          if (MediaQuery.of(context).orientation == Orientation.portrait)
            Align(
              alignment: Alignment.topCenter,
              // alignment: Alignment.lerp(
              //   Alignment.topCenter,
              //   Alignment.center,
              //   0.25,
              // ),
              child: PokemonImage(pokemon: pokemon!),
            ),
        ],
      ),
    );
  }
}
