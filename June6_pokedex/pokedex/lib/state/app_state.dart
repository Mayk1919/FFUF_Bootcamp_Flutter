import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/pokemon_evolution_chain/pokemon_evolution_chain.dart';
import 'package:pokedex/models/pokemon_species/pokemon_species.dart';
import 'package:pokedex/models/simple_pokemon/simple_pokemon_list.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
abstract class AppState with _$AppState {
  factory AppState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    SimplePokemonList simplePokemonList,
    @Default(<Pokemon>[]) List<Pokemon> pokemonList,
    @Default(<Pokemon>[]) List<Pokemon> searchResultList,
    @Default(false) bool isDisplayingSearchPage,
    @Default(false) bool isSearchingPokemon,
    @Default(false) bool isLoadingMorePokemon,
    Pokemon pokemonDisplayed,
    @Default(0) int pokemonDisplayedTypeColor,
    @Default(false) bool isLoadingPokemonPageDetails,
    PokemonSpecies pokemonSpecies,
    PokemonEvolutionChain pokemonEvolutionChain,
    // evolution UI needs the ID and image
    @Default(<Pokemon>[]) List<Pokemon> pokemonEvolutionDetails,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
