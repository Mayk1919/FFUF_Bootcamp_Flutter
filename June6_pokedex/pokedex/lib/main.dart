import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/pages/pokemon_list_page/pokemon_list_page_connector.dart';
import 'package:pokedex/state/actions/actions.dart';
import 'package:pokedex/state/app_state.dart';
import 'package:pokedex/utilities/app_router.dart';
import 'package:pokedex/utilities/global_constants.dart';
import 'package:pokedex/utilities/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Needed if main is async

  final state = AppState();
  final store = Store<AppState>(initialState: state);

  await _setInitialTheme();
  final themeMode = await _getThemeModeInSharedPrefs();

  runApp(
    PokedexApp(
      store: store,
      themeMode: themeMode,
    ),
  );
}

/// On installation, sets theme to system-wide theme.
Future<void> _setInitialTheme() async {
  final prefs = await SharedPreferences.getInstance();
  if (!prefs.containsKey(kThemeSharedPrefsKey)) {
    await prefs.setInt(kThemeSharedPrefsKey, ThemeMode.system.index);
  }
}

Future<ThemeMode> _getThemeModeInSharedPrefs() async {
  final prefs = await SharedPreferences.getInstance();
  return ThemeMode.values[prefs.getInt(kThemeSharedPrefsKey)!];
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({
    required this.store,
    required this.themeMode,
  });

  final Store<AppState> store;
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialAppConnector(themeMode: themeMode),
      );
}

class MaterialAppConnector extends StatelessWidget {
  const MaterialAppConnector({
    Key? key,
    required this.themeMode,
  }) : super(key: key);

  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _MaterialAppViewModel>(
      onInit: (store) => store.dispatch(SetThemeAction(themeMode)),
      vm: () => _MaterialAppViewModelFactory(this),
      builder: (context, vm) {
        return MaterialApp(
          title: 'Pokedex',
          theme: PokedexTheme.themeRegular,
          darkTheme: PokedexTheme.themeDark,
          themeMode: vm.themeMode,
          debugShowCheckedModeBanner: false,
          initialRoute: PokemonListPageConnector.route,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}

class _MaterialAppViewModelFactory extends VmFactory<AppState, MaterialAppConnector> {
  _MaterialAppViewModelFactory(MaterialAppConnector widget) : super(widget);

  @override
  Vm fromStore() {
    return _MaterialAppViewModel(state.themeMode);
  }
}

class _MaterialAppViewModel extends Vm {
  _MaterialAppViewModel(this.themeMode) : super(equals: [themeMode]);

  final ThemeMode themeMode;
}
