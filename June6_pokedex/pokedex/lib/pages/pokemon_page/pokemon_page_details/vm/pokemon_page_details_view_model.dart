import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/pokemon_evolution_chain/pokemon_evolution_chain.dart';
import 'package:pokedex/models/pokemon_species/pokemon_species.dart';

class PokemonPageDetailsViewModel extends Vm {
  PokemonPageDetailsViewModel({
    required this.pokemon,
    required this.pokemonColor,
    required this.pokemonSpecies,
    required this.pokemonEvolutionChain,
    required this.isLoadingPokemonPageDetails,
    required this.pokemonEvolutionDetails,
  }) : super(equals: [
          pokemon,
          pokemonColor,
          pokemonSpecies,
          pokemonEvolutionChain,
          isLoadingPokemonPageDetails,
          pokemonEvolutionDetails,
        ]);

  final Pokemon pokemon;
  final Color pokemonColor;
  final PokemonSpecies pokemonSpecies;
  final PokemonEvolutionChain pokemonEvolutionChain;
  final bool isLoadingPokemonPageDetails;
  final List<Pokemon> pokemonEvolutionDetails;
}
