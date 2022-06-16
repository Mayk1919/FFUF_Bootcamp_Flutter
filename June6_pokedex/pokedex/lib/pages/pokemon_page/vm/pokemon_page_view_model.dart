import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';

class PokemonPageViewModel extends Vm {
  PokemonPageViewModel({
    required this.pokemon,
    required this.pokemonTypeColor,
  }) : super(equals: [
          pokemon,
          pokemonTypeColor,
        ]);

  final Pokemon pokemon;
  final Color pokemonTypeColor;
}
