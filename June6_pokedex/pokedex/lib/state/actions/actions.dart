import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/simple_pokemon/simple_pokemon.dart';
import 'package:pokedex/services/pokemon_evolution_service.dart';
import 'package:pokedex/services/pokemon_list_service.dart';
import 'package:pokedex/services/pokemon_service.dart';
import 'package:pokedex/services/pokemon_species_service.dart';
import 'package:pokedex/state/app_state.dart';
import 'package:pokedex/utilities/global_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SetThemeAction extends ReduxAction<AppState> {
  SetThemeAction(this.themeMode);

  final ThemeMode themeMode;

  @override
  Future<AppState> reduce() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(kThemeSharedPrefsKey, themeMode.index);
    return state.copyWith(
        themeMode: ThemeMode.values[prefs.getInt(kThemeSharedPrefsKey)!]);
  }
}

class InitPokemonListPageAction extends ReduxAction<AppState> {
  @override
  Future<AppState?> reduce() async {
    await dispatch(FetchSimplePokemonListAction());
    await dispatch(FetchPokemonListAction(
        simplePokemonList: state.simplePokemonList.simplePokemonList));
    return null;
  }
}

class FetchSimplePokemonListAction extends ReduxAction<AppState> {
  FetchSimplePokemonListAction({this.nextPageUrl});

  final String? nextPageUrl;

  @override
  Future<AppState> reduce() async {
    final fetchedSimplePokemonList =
        await PokemonListService.fetchSimplePokemonList(
            nextPageUrl: nextPageUrl!);

    if (nextPageUrl == null) {
      return state.copyWith(
        simplePokemonList: fetchedSimplePokemonList,
        pokemonList: [],
        searchResultList: [],
      );
    } else {
      final updatedSimplePokemonList = state.simplePokemonList.copyWith(
        count: fetchedSimplePokemonList.count,
        next: fetchedSimplePokemonList.next,
        previous: fetchedSimplePokemonList.previous,
        simplePokemonList: [
          ...state.simplePokemonList.simplePokemonList,
          ...fetchedSimplePokemonList.simplePokemonList,
        ],
      );
      return state.copyWith(simplePokemonList: updatedSimplePokemonList);
    }
  }
}

class FetchPokemonListAction extends ReduxAction<AppState> {
  FetchPokemonListAction({required this.simplePokemonList});

  final List<SimplePokemon> simplePokemonList;

  @override
  Future<AppState> reduce() async {
    final fetchedPokemonList =
        await PokemonListService.fetchPokemonListDetails(simplePokemonList);

    final updatedPokemonList = [
      ...state.pokemonList,
      ...fetchedPokemonList!,
    ];

    return state.copyWith(pokemonList: updatedPokemonList);
  }
}

class InitPokemonPageAction extends ReduxAction<AppState> {
  InitPokemonPageAction({
    this.pokemon,
    this.pokemonColor,
  });

  final Pokemon? pokemon;
  final Color? pokemonColor;

  @override
  AppState reduce() {
    return state.copyWith(
      pokemonDisplayed: pokemon!,
      pokemonDisplayedTypeColor: pokemonColor!.value,
    );
  }
}

class InitPokemonPageDetailsAction extends ReduxAction<AppState> {
  InitPokemonPageDetailsAction({this.pokemon});

  final Pokemon? pokemon;

  @override
  Future<AppState?> reduce() async {
    await dispatch(
        FetchPokemonSpeciesAction(speciesUrl: pokemon!.speciesUrl));
    await dispatch(
        FetchPokemonEvolutionAction(speciesUrl: pokemon!.speciesUrl));
    await dispatch(FetchPokemonEvolutionDetails());
    return null;
  }

  @override
  void before() => dispatch(LoadingAction(isLoadingPokemonPageDetails: true));

  @override
  void after() => dispatch(LoadingAction(isLoadingPokemonPageDetails: false));
}

class FetchPokemonSpeciesAction extends ReduxAction<AppState> {
  FetchPokemonSpeciesAction({required this.speciesUrl});

  final String speciesUrl;

  @override
  Future<AppState> reduce() async {
    final species =
        await PokemonSpeciesService.fetchPokemonSpecies(speciesUrl: speciesUrl);
    return state.copyWith(pokemonSpecies: species!);
  }
}

class FetchPokemonEvolutionAction extends ReduxAction<AppState> {
  FetchPokemonEvolutionAction({required this.speciesUrl});

  final String speciesUrl;

  @override
  Future<AppState> reduce() async {
    final evolutionChain =
        await PokemonEvolutionChainService.fetchEvolutionChain(
            speciesUrl: speciesUrl);
    return state.copyWith(pokemonEvolutionChain: evolutionChain!);
  }
}

class FetchPokemonEvolutionDetails extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final evolutionChainDetails =
        await PokemonEvolutionChainService.fetchEvolutionDetails(
            chain: state.pokemonEvolutionChain);
    return state.copyWith(pokemonEvolutionDetails: evolutionChainDetails);
  }
}

class FetchMorePokemonAction extends ReduxAction<AppState> {
  @override
  Future<AppState?> reduce() async {
    await dispatch(FetchSimplePokemonListAction(
        nextPageUrl: state.simplePokemonList.next));

    final startIndex = state.simplePokemonList.simplePokemonList.length -
        kFetchMorePokemonCount;
    await dispatch(FetchPokemonListAction(
        simplePokemonList:
            state.simplePokemonList.simplePokemonList.sublist(startIndex)));
    return null;
  }

  @override
  void before() => dispatch(LoadingAction(isLoadingMorePokemon: true));

  @override
  void after() => dispatch(LoadingAction(isLoadingMorePokemon: false));
}

class SearchPokemonAction extends ReduxAction<AppState> {
  SearchPokemonAction({this.searchText});

  final String? searchText;

  @override
  Future<AppState> reduce() async {
    if (searchText?.isNotEmpty ?? false) {
      final searchResults =
          await PokemonService.fetchSearchPokemonList(searchText!.trim());
      return state.copyWith(searchResultList: searchResults ?? []);
    }
    return state;
  }

  @override
  void before() => dispatch(LoadingAction(isSearchingPokemon: true));

  @override
  void after() => dispatch(LoadingAction(isSearchingPokemon: false));
}

class ToggleSearchAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    if (state.isDisplayingSearchPage) {
      return state.copyWith(
        isDisplayingSearchPage: false,
        searchResultList: [],
      );
    } else {
      return state.copyWith(
        isDisplayingSearchPage: true,
      );
    }
  }
}

class LoadingAction extends ReduxAction<AppState> {
  LoadingAction({
    this.isSearchingPokemon,
    this.isLoadingMorePokemon,
    this.isLoadingPokemonPageDetails,
  });

  final bool? isSearchingPokemon;
  final bool? isLoadingMorePokemon;
  final bool? isLoadingPokemonPageDetails;

  @override
  AppState reduce() {
    return state.copyWith(
      isSearchingPokemon: isSearchingPokemon ?? state.isSearchingPokemon,
      isLoadingMorePokemon: isLoadingMorePokemon ?? state.isLoadingMorePokemon,
      isLoadingPokemonPageDetails:
          isLoadingPokemonPageDetails ?? state.isLoadingPokemonPageDetails,
    );
  }
}
