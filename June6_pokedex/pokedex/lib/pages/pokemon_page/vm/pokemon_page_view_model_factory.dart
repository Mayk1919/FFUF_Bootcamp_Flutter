import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_connector.dart';
import 'package:pokedex/pages/pokemon_page/vm/pokemon_page_view_model.dart';
import 'package:pokedex/state/app_state.dart';

class PokemonPageViewModelFactory
    extends VmFactory<AppState, PokemonPageConnector> {
  PokemonPageViewModelFactory(PokemonPageConnector widget) : super(widget);

  @override
  Vm fromStore() {
    return PokemonPageViewModel(
      pokemon: state.pokemonDisplayed,
      pokemonTypeColor: Color(state.pokemonDisplayedTypeColor),
    );
  }
}
