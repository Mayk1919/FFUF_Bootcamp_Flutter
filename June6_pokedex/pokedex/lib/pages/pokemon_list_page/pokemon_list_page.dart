import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/union_page_state.dart';
import 'package:pokedex/pages/pokemon_list_page/widgets/pokemon_scroll_grid.dart';
import 'package:pokedex/pages/pokemon_list_page/widgets/pokemon_search_results_grid.dart';
import 'package:pokedex/utilities/global_constants.dart';
import 'package:pokedex/widgets/empty_page_with_message.dart';
import 'package:pokedex/widgets/loading_page_indicator.dart';
import 'package:pokedex/widgets/search_widget.dart';
import 'package:pokedex/widgets/toggle_icon_button.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({
    required this.isLoadingMorePokemon,
    required this.onLoadMorePokemon,
    required this.onRefreshPage,
    required this.isDisplayingSearchPage,
    required this.onSearchPokemon,
    required this.onPressSearchIcon,
    required this.themeMode,
    required this.setTheme,
    required this.unionPageState,
    required this.unionSearchPageState,
    Key? key,
  }) : super(key: key);

  static const String route = '/';

  final bool isLoadingMorePokemon;
  final bool isDisplayingSearchPage;
  final VoidCallback onLoadMorePokemon;
  final VoidCallback onRefreshPage;
  final void Function(String searchText) onSearchPokemon;
  final VoidCallback onPressSearchIcon;
  final ThemeMode themeMode;
  final void Function(ThemeMode) setTheme;
  final UnionPageState<List<Pokemon>> unionPageState;
  final UnionPageState<List<Pokemon>> unionSearchPageState;

  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  ScrollController? scrollController;
  TextEditingController? searchFilter;

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController();
    scrollController!.addListener(handleScroll);
    searchFilter = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.isDisplayingSearchPage
            ? SearchWidget(
                searchBoxHint: 'Search Pokemon',
                searchCallback: widget.onSearchPokemon,
                searchFilter: searchFilter,
                onChangeCallback: _onChangeSearchField,
              )
            : Text(
                'Pokedex',
                style: Theme.of(context).textTheme.headline2,
              ),
        actions: [
          ToggleIconButton(
            iconIfCondition: const Icon(Icons.close),
            otherIcon: const Icon(Icons.search),
            condition: widget.isDisplayingSearchPage,
            onPress: onPressSearchIcon,
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: onRefreshPage,
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case kChooseThemeMenuTitle:
                  _showThemeChoiceDialog();
                  break;
              }
            },
            itemBuilder: (context) {
              return {kChooseThemeMenuTitle}
                  .map((choice) =>
                      PopupMenuItem<String>(value: choice, child: Text(choice)))
                  .toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: kPokemonListPageScaffoldBodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.unionPageState.when(
              (pokemonList) => Expanded(
                child: shouldDisplaySearchPage()
                    ? widget.unionSearchPageState.when(
                        (searchList) => PokemonSearchResultsGrid(
                            searchResultList: searchList),
                        loading: () => LoadingPage(),
                        error: (message) =>
                            EmptyPageWithMessage(message: message),
                      )
                    : RefreshIndicator(
                        onRefresh: onRefreshPage,
                        child: PokemonScrollGrid(
                          scrollController: scrollController!,
                          isLoadingMorePokemon: widget.isLoadingMorePokemon,
                          pokemonList: pokemonList,
                          themeMode: widget.themeMode,
                        ),
                      ),
              ),
              loading: () => Expanded(child: LoadingPage()),
              error: (message) =>
                  EmptyPageWithMessage(message: 'Error: $message'),
            ),
          ],
        ),
      ),
    );
  }

  bool shouldDisplaySearchPage() =>
      widget.isDisplayingSearchPage && searchFilter!.text.isNotEmpty;

  void handleScroll() {
    if (!widget.isLoadingMorePokemon &&
        scrollController!.position.pixels ==
            scrollController!.position.maxScrollExtent) {
      // At the bottom of the list
      widget.onLoadMorePokemon();
    }
  }

  Future<void> onRefreshPage() async => widget.onRefreshPage();

  void onPressSearchIcon() {
    if (widget.isDisplayingSearchPage) {
      setState(() => searchFilter!.clear());
    }
    widget.onPressSearchIcon();
  }

  void _onChangeSearchField(String text) => widget.onSearchPokemon(text);

  Future<void> setTheme(ThemeMode? themeMode) async {
    widget.setTheme(themeMode!);
    Navigator.of(context).pop();
  }

  void _showThemeChoiceDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Choose Theme'),
          content: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioListTile<ThemeMode>(
                    title: const Text('Light'),
                    value: ThemeMode.light,
                    groupValue: widget.themeMode,
                    onChanged: setTheme,
                  ),
                  RadioListTile<ThemeMode>(
                    title: const Text('Dark'),
                    value: ThemeMode.dark,
                    groupValue: widget.themeMode,
                    onChanged: setTheme,
                  ),
                  RadioListTile<ThemeMode>(
                    title: const Text('System'),
                    value: ThemeMode.system,
                    groupValue: widget.themeMode,
                    onChanged: setTheme,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
