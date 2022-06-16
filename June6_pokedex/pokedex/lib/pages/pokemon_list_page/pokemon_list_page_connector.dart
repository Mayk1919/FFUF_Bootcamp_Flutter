import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokemon_list_page/pokemon_list_page.dart';
import 'package:pokedex/pages/pokemon_list_page/vm/pokemon_list_page_view_model.dart';
import 'package:pokedex/pages/pokemon_list_page/vm/pokemon_list_page_view_model_factory.dart';
import 'package:pokedex/state/actions/actions.dart';
import 'package:pokedex/state/app_state.dart';

class PokemonListPageConnector extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PokemonListPageViewModel>(
      onInit: (store) => store.dispatch(InitPokemonListPageAction()),
      vm: () => PokemonListPageViewModelFactory(this),
      builder: (context, vm) {
        return PokemonListPage(
          isDisplayingSearchPage: vm.isDisplayingSearchPage,
          isLoadingMorePokemon: vm.isLoadingMorePokemon,
          onSearchPokemon: vm.onSearchPokemon,
          onLoadMorePokemon: vm.onLoadMorePokemon,
          onRefreshPage: vm.onRefreshPage,
          onPressSearchIcon: vm.onPressSearchIcon,
          themeMode: vm.themeMode,
          setTheme: vm.setTheme,
          unionPageState: vm.unionPageState,
          unionSearchPageState: vm.unionSearchPageState,
        );
      },
    );
  }
}
