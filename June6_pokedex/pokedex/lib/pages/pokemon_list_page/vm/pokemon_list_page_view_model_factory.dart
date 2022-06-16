import 'package:async_redux/async_redux.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/union_page_state.dart';
import 'package:pokedex/pages/pokemon_list_page/vm/pokemon_list_page_view_model.dart';
import 'package:pokedex/state/actions/actions.dart';
import 'package:pokedex/state/app_state.dart';
import 'package:pokedex/utilities/debouncer.dart';
import 'package:pokedex/utilities/global_constants.dart';

import '../pokemon_list_page_connector.dart';

class PokemonListPageViewModelFactory
    extends VmFactory<AppState, PokemonListPageConnector> {
  PokemonListPageViewModelFactory(PokemonListPageConnector widget)
      : super(widget) {
    debouncer = Debouncer(
      milliseconds: kSearchDebounceMilliseconds,
    );
  }

  Debouncer? debouncer;

  @override
  Vm fromStore() {
    return PokemonListPageViewModel(
      isLoadingMorePokemon: state.isLoadingMorePokemon,
      isDisplayingSearchPage: state.isDisplayingSearchPage,
      onLoadMorePokemon: () => dispatch(FetchMorePokemonAction()),
      onRefreshPage: () => dispatch(InitPokemonListPageAction()),
      onSearchPokemon: (text) {
        debouncer!.run(() => dispatch(SearchPokemonAction(searchText: text)));
      },
      onPressSearchIcon: () => dispatch(ToggleSearchAction()),
      themeMode: state.themeMode,
      setTheme: (themeMode) => dispatch(SetThemeAction(themeMode)),
      unionPageState: _getLoadingState(),
      unionSearchPageState: _getSearchingState(),
    );
  }

  UnionPageState<List<Pokemon>> _getLoadingState() {
    if (state.pokemonList.isEmpty) {
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.pokemonList);
    }
  }

  UnionPageState<List<Pokemon>> _getSearchingState() {
    if (state.isSearchingPokemon) {
      return const UnionPageState.loading();
    } else if (state.searchResultList == null ||
        state.searchResultList.isEmpty) {
      return const UnionPageState.error('No Pokemon Found');
    } else {
      return UnionPageState(state.searchResultList);
    }
  }
}
