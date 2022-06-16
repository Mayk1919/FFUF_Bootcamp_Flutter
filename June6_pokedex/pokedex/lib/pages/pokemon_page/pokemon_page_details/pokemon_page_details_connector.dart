import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/pokemon_page_details.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/vm/pokemon_page_details_view_model.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page_details/vm/pokemon_page_details_view_model_factory.dart';
import 'package:pokedex/state/actions/actions.dart';
import 'package:pokedex/state/app_state.dart';

class PokemonPageDetailsConnector extends StatelessWidget {
  const PokemonPageDetailsConnector({
    Key? key,
    this.pokemon,
    this.pokemonColor,
  }) : super(key: key);

  final Pokemon? pokemon;
  final Color? pokemonColor;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PokemonPageDetailsViewModel>(
      onInit: (store) =>
          store.dispatch(InitPokemonPageDetailsAction(pokemon: pokemon)),
      vm: () => PokemonPageDetailsViewModelFactory(this),
      builder: (context, vm) {
        return PokemonPageDetails(
          pokemon: pokemon!,
          pokemonColor: pokemonColor!,
          isLoadingDetails: vm.isLoadingPokemonPageDetails,
          pokemonSpecies: vm.pokemonSpecies,
          pokemonEvolutionChain: vm.pokemonEvolutionChain,
          pokemonEvolutionDetails: vm.pokemonEvolutionDetails,
        );
      },
    );
  }
}
