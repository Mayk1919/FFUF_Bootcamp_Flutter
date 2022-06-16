import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/pages/pokemon_page/pokemon_page.dart';
import 'package:pokedex/pages/pokemon_page/vm/pokemon_page_view_model.dart';
import 'package:pokedex/pages/pokemon_page/vm/pokemon_page_view_model_factory.dart';
import 'package:pokedex/state/actions/actions.dart';
import 'package:pokedex/state/app_state.dart';

class PokemonPageConnector extends StatelessWidget {
  const PokemonPageConnector({
    Key? key,
    this.pokemon,
    this.pokemonColor,
  }) : super(key: key);

  static const String route = '/pokemon';
  final Pokemon? pokemon;
  final Color? pokemonColor;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PokemonPageViewModel>(
      onInit: (store) =>
          store.dispatch(
            InitPokemonPageAction(
              pokemon: pokemon,
              pokemonColor: pokemonColor,
            ),
          ),
      vm: () => PokemonPageViewModelFactory(this),
      builder: (context, vm) {
        return PokemonPage(
          pokemon: vm.pokemon,
          pokemonColor: vm.pokemonTypeColor,
        );
      },
    );
  }
}
