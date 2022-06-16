import 'package:flutter/material.dart';
import 'package:pokedex/utilities/color_utilities.dart';
import 'package:pokedex/utilities/global_constants.dart';
import 'package:pokedex/utilities/pokemon_color_picker.dart';
import 'package:pokedex/utilities/string_extension.dart';

class PokemonTypeName extends StatelessWidget {
  const PokemonTypeName({
    required this.name,
    required this.mainTypeName,
    Key? key,
  }) : super(key: key);

  final String name;
  final String mainTypeName;

  @override
  Widget build(BuildContext context) {
    final color = PokemonColorPicker.getColor(mainTypeName);
    final pokemonColor = Theme.of(context).brightness == Brightness.dark
        ? color
        : lighten(color);
    return Container(
      padding: kPokemonTypePadding,
      margin: kPokemonTypeMargin,
      decoration: BoxDecoration(
        color: pokemonColor,
        border: Border.all(color: kPokemonTypeBorderColor),
        borderRadius: kPokemonTypeBorderRadius,
      ),
      child: Text(
        name.inCaps,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
