import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/vm/pokemon_page_details_view_model.dart';
import 'package:pokedex/state/app_state.dart';

import '../pokemon_page_details_connector.dart';

class PokemonPageDetailsViewModelFactory
    extends VmFactory<AppState, PokemonPageDetailsConnector> {
  PokemonPageDetailsViewModelFactory(PokemonPageDetailsConnector widget)
      : super(widget);

  @override
  Vm fromStore() {
    return PokemonPageDetailsViewModel(
      pokemon: state.pokemonDisplayed,
      pokemonColor: Color(state.pokemonDisplayedTypeColor),
      isLoadingPokemonPageDetails: state.isLoadingPokemonPageDetails,
      pokemonSpecies: state.pokemonSpecies,
      pokemonEvolutionChain: state.pokemonEvolutionChain,
      pokemonEvolutionDetails: state.pokemonEvolutionDetails,
    );
  }
}
