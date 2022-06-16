import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/union_page_state.dart';

class PokemonListPageViewModel extends Vm {
  PokemonListPageViewModel({
    required this.isDisplayingSearchPage,
    required this.isLoadingMorePokemon,
    required this.onLoadMorePokemon,
    required this.onRefreshPage,
    required this.onSearchPokemon,
    required this.onPressSearchIcon,
    required this.themeMode,
    required this.setTheme,
    required this.unionPageState,
    required this.unionSearchPageState,
  }) : super(equals: [
          isDisplayingSearchPage,
          isLoadingMorePokemon,
          themeMode,
          unionPageState,
          unionSearchPageState,
        ]);

  final bool isDisplayingSearchPage;
  final bool isLoadingMorePokemon;
  final VoidCallback onLoadMorePokemon;
  final VoidCallback onRefreshPage;
  final void Function(String) onSearchPokemon;
  final VoidCallback onPressSearchIcon;
  final ThemeMode themeMode;
  final void Function(ThemeMode) setTheme;
  final UnionPageState<List<Pokemon>> unionPageState;
  final UnionPageState<List<Pokemon>> unionSearchPageState;
}
