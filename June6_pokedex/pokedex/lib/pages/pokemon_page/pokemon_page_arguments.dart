import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';

class PokemonPageArguments {
  PokemonPageArguments({
    required this.pokemon,
    required this.mainTypeColor,
  });

  final Pokemon pokemon;
  final Color mainTypeColor;
}
