import 'package:flutter/material.dart';
import 'package:pokedex/utilities/global_constants.dart';
import 'package:pokedex/utilities/string_extension.dart';

class PokemonName extends StatelessWidget {
  const PokemonName({
    required this.name,
    Key? key,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPokemonNamePadding,
      child: Text(
        name.inCaps,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
