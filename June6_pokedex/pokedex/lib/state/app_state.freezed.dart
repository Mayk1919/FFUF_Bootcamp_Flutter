// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

// ignore: unused_element
  _AppState call(
      {ThemeMode themeMode = ThemeMode.system,
      SimplePokemonList simplePokemonList,
      List<Pokemon> pokemonList = const <Pokemon>[],
      List<Pokemon> searchResultList = const <Pokemon>[],
      bool isDisplayingSearchPage = false,
      bool isSearchingPokemon = false,
      bool isLoadingMorePokemon = false,
      Pokemon pokemonDisplayed,
      int pokemonDisplayedTypeColor = 0,
      bool isLoadingPokemonPageDetails = false,
      PokemonSpecies pokemonSpecies,
      PokemonEvolutionChain pokemonEvolutionChain,
      List<Pokemon> pokemonEvolutionDetails = const <Pokemon>[]}) {
    return _AppState(
      themeMode: themeMode,
      simplePokemonList: simplePokemonList,
      pokemonList: pokemonList,
      searchResultList: searchResultList,
      isDisplayingSearchPage: isDisplayingSearchPage,
      isSearchingPokemon: isSearchingPokemon,
      isLoadingMorePokemon: isLoadingMorePokemon,
      pokemonDisplayed: pokemonDisplayed,
      pokemonDisplayedTypeColor: pokemonDisplayedTypeColor,
      isLoadingPokemonPageDetails: isLoadingPokemonPageDetails,
      pokemonSpecies: pokemonSpecies,
      pokemonEvolutionChain: pokemonEvolutionChain,
      pokemonEvolutionDetails: pokemonEvolutionDetails,
    );
  }

// ignore: unused_element
  AppState fromJson(Map<String, Object> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  ThemeMode get themeMode;
  SimplePokemonList get simplePokemonList;
  List<Pokemon> get pokemonList;
  List<Pokemon> get searchResultList;
  bool get isDisplayingSearchPage;
  bool get isSearchingPokemon;
  bool get isLoadingMorePokemon;
  Pokemon get pokemonDisplayed;
  int get pokemonDisplayedTypeColor;
  bool get isLoadingPokemonPageDetails;
  PokemonSpecies get pokemonSpecies;
  PokemonEvolutionChain
      get pokemonEvolutionChain; // evolution UI needs the ID and image
  List<Pokemon> get pokemonEvolutionDetails;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {ThemeMode themeMode,
      SimplePokemonList simplePokemonList,
      List<Pokemon> pokemonList,
      List<Pokemon> searchResultList,
      bool isDisplayingSearchPage,
      bool isSearchingPokemon,
      bool isLoadingMorePokemon,
      Pokemon pokemonDisplayed,
      int pokemonDisplayedTypeColor,
      bool isLoadingPokemonPageDetails,
      PokemonSpecies pokemonSpecies,
      PokemonEvolutionChain pokemonEvolutionChain,
      List<Pokemon> pokemonEvolutionDetails});

  $SimplePokemonListCopyWith<$Res> get simplePokemonList;
  $PokemonCopyWith<$Res> get pokemonDisplayed;
  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies;
  $PokemonEvolutionChainCopyWith<$Res> get pokemonEvolutionChain;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object themeMode = freezed,
    Object simplePokemonList = freezed,
    Object pokemonList = freezed,
    Object searchResultList = freezed,
    Object isDisplayingSearchPage = freezed,
    Object isSearchingPokemon = freezed,
    Object isLoadingMorePokemon = freezed,
    Object pokemonDisplayed = freezed,
    Object pokemonDisplayedTypeColor = freezed,
    Object isLoadingPokemonPageDetails = freezed,
    Object pokemonSpecies = freezed,
    Object pokemonEvolutionChain = freezed,
    Object pokemonEvolutionDetails = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode:
          themeMode == freezed ? _value.themeMode : themeMode as ThemeMode,
      simplePokemonList: simplePokemonList == freezed
          ? _value.simplePokemonList
          : simplePokemonList as SimplePokemonList,
      pokemonList: pokemonList == freezed
          ? _value.pokemonList
          : pokemonList as List<Pokemon>,
      searchResultList: searchResultList == freezed
          ? _value.searchResultList
          : searchResultList as List<Pokemon>,
      isDisplayingSearchPage: isDisplayingSearchPage == freezed
          ? _value.isDisplayingSearchPage
          : isDisplayingSearchPage as bool,
      isSearchingPokemon: isSearchingPokemon == freezed
          ? _value.isSearchingPokemon
          : isSearchingPokemon as bool,
      isLoadingMorePokemon: isLoadingMorePokemon == freezed
          ? _value.isLoadingMorePokemon
          : isLoadingMorePokemon as bool,
      pokemonDisplayed: pokemonDisplayed == freezed
          ? _value.pokemonDisplayed
          : pokemonDisplayed as Pokemon,
      pokemonDisplayedTypeColor: pokemonDisplayedTypeColor == freezed
          ? _value.pokemonDisplayedTypeColor
          : pokemonDisplayedTypeColor as int,
      isLoadingPokemonPageDetails: isLoadingPokemonPageDetails == freezed
          ? _value.isLoadingPokemonPageDetails
          : isLoadingPokemonPageDetails as bool,
      pokemonSpecies: pokemonSpecies == freezed
          ? _value.pokemonSpecies
          : pokemonSpecies as PokemonSpecies,
      pokemonEvolutionChain: pokemonEvolutionChain == freezed
          ? _value.pokemonEvolutionChain
          : pokemonEvolutionChain as PokemonEvolutionChain,
      pokemonEvolutionDetails: pokemonEvolutionDetails == freezed
          ? _value.pokemonEvolutionDetails
          : pokemonEvolutionDetails as List<Pokemon>,
    ));
  }

  @override
  $SimplePokemonListCopyWith<$Res> get simplePokemonList {
    if (_value.simplePokemonList == null) {
      return null;
    }
    return $SimplePokemonListCopyWith<$Res>(_value.simplePokemonList, (value) {
      return _then(_value.copyWith(simplePokemonList: value));
    });
  }

  @override
  $PokemonCopyWith<$Res> get pokemonDisplayed {
    if (_value.pokemonDisplayed == null) {
      return null;
    }
    return $PokemonCopyWith<$Res>(_value.pokemonDisplayed, (value) {
      return _then(_value.copyWith(pokemonDisplayed: value));
    });
  }

  @override
  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies {
    if (_value.pokemonSpecies == null) {
      return null;
    }
    return $PokemonSpeciesCopyWith<$Res>(_value.pokemonSpecies, (value) {
      return _then(_value.copyWith(pokemonSpecies: value));
    });
  }

  @override
  $PokemonEvolutionChainCopyWith<$Res> get pokemonEvolutionChain {
    if (_value.pokemonEvolutionChain == null) {
      return null;
    }
    return $PokemonEvolutionChainCopyWith<$Res>(_value.pokemonEvolutionChain,
        (value) {
      return _then(_value.copyWith(pokemonEvolutionChain: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ThemeMode themeMode,
      SimplePokemonList simplePokemonList,
      List<Pokemon> pokemonList,
      List<Pokemon> searchResultList,
      bool isDisplayingSearchPage,
      bool isSearchingPokemon,
      bool isLoadingMorePokemon,
      Pokemon pokemonDisplayed,
      int pokemonDisplayedTypeColor,
      bool isLoadingPokemonPageDetails,
      PokemonSpecies pokemonSpecies,
      PokemonEvolutionChain pokemonEvolutionChain,
      List<Pokemon> pokemonEvolutionDetails});

  @override
  $SimplePokemonListCopyWith<$Res> get simplePokemonList;
  @override
  $PokemonCopyWith<$Res> get pokemonDisplayed;
  @override
  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies;
  @override
  $PokemonEvolutionChainCopyWith<$Res> get pokemonEvolutionChain;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object themeMode = freezed,
    Object simplePokemonList = freezed,
    Object pokemonList = freezed,
    Object searchResultList = freezed,
    Object isDisplayingSearchPage = freezed,
    Object isSearchingPokemon = freezed,
    Object isLoadingMorePokemon = freezed,
    Object pokemonDisplayed = freezed,
    Object pokemonDisplayedTypeColor = freezed,
    Object isLoadingPokemonPageDetails = freezed,
    Object pokemonSpecies = freezed,
    Object pokemonEvolutionChain = freezed,
    Object pokemonEvolutionDetails = freezed,
  }) {
    return _then(_AppState(
      themeMode:
          themeMode == freezed ? _value.themeMode : themeMode as ThemeMode,
      simplePokemonList: simplePokemonList == freezed
          ? _value.simplePokemonList
          : simplePokemonList as SimplePokemonList,
      pokemonList: pokemonList == freezed
          ? _value.pokemonList
          : pokemonList as List<Pokemon>,
      searchResultList: searchResultList == freezed
          ? _value.searchResultList
          : searchResultList as List<Pokemon>,
      isDisplayingSearchPage: isDisplayingSearchPage == freezed
          ? _value.isDisplayingSearchPage
          : isDisplayingSearchPage as bool,
      isSearchingPokemon: isSearchingPokemon == freezed
          ? _value.isSearchingPokemon
          : isSearchingPokemon as bool,
      isLoadingMorePokemon: isLoadingMorePokemon == freezed
          ? _value.isLoadingMorePokemon
          : isLoadingMorePokemon as bool,
      pokemonDisplayed: pokemonDisplayed == freezed
          ? _value.pokemonDisplayed
          : pokemonDisplayed as Pokemon,
      pokemonDisplayedTypeColor: pokemonDisplayedTypeColor == freezed
          ? _value.pokemonDisplayedTypeColor
          : pokemonDisplayedTypeColor as int,
      isLoadingPokemonPageDetails: isLoadingPokemonPageDetails == freezed
          ? _value.isLoadingPokemonPageDetails
          : isLoadingPokemonPageDetails as bool,
      pokemonSpecies: pokemonSpecies == freezed
          ? _value.pokemonSpecies
          : pokemonSpecies as PokemonSpecies,
      pokemonEvolutionChain: pokemonEvolutionChain == freezed
          ? _value.pokemonEvolutionChain
          : pokemonEvolutionChain as PokemonEvolutionChain,
      pokemonEvolutionDetails: pokemonEvolutionDetails == freezed
          ? _value.pokemonEvolutionDetails
          : pokemonEvolutionDetails as List<Pokemon>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppState implements _AppState {
  _$_AppState(
      {this.themeMode = ThemeMode.system,
      this.simplePokemonList,
      this.pokemonList = const <Pokemon>[],
      this.searchResultList = const <Pokemon>[],
      this.isDisplayingSearchPage = false,
      this.isSearchingPokemon = false,
      this.isLoadingMorePokemon = false,
      this.pokemonDisplayed,
      this.pokemonDisplayedTypeColor = 0,
      this.isLoadingPokemonPageDetails = false,
      this.pokemonSpecies,
      this.pokemonEvolutionChain,
      this.pokemonEvolutionDetails = const <Pokemon>[]})
      : assert(themeMode != null),
        assert(pokemonList != null),
        assert(searchResultList != null),
        assert(isDisplayingSearchPage != null),
        assert(isSearchingPokemon != null),
        assert(isLoadingMorePokemon != null),
        assert(pokemonDisplayedTypeColor != null),
        assert(isLoadingPokemonPageDetails != null),
        assert(pokemonEvolutionDetails != null);

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$_$_AppStateFromJson(json);

  @JsonKey(defaultValue: ThemeMode.system)
  @override
  final ThemeMode themeMode;
  @override
  final SimplePokemonList simplePokemonList;
  @JsonKey(defaultValue: const <Pokemon>[])
  @override
  final List<Pokemon> pokemonList;
  @JsonKey(defaultValue: const <Pokemon>[])
  @override
  final List<Pokemon> searchResultList;
  @JsonKey(defaultValue: false)
  @override
  final bool isDisplayingSearchPage;
  @JsonKey(defaultValue: false)
  @override
  final bool isSearchingPokemon;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingMorePokemon;
  @override
  final Pokemon pokemonDisplayed;
  @JsonKey(defaultValue: 0)
  @override
  final int pokemonDisplayedTypeColor;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingPokemonPageDetails;
  @override
  final PokemonSpecies pokemonSpecies;
  @override
  final PokemonEvolutionChain pokemonEvolutionChain;
  @JsonKey(defaultValue: const <Pokemon>[])
  @override // evolution UI needs the ID and image
  final List<Pokemon> pokemonEvolutionDetails;

  @override
  String toString() {
    return 'AppState(themeMode: $themeMode, simplePokemonList: $simplePokemonList, pokemonList: $pokemonList, searchResultList: $searchResultList, isDisplayingSearchPage: $isDisplayingSearchPage, isSearchingPokemon: $isSearchingPokemon, isLoadingMorePokemon: $isLoadingMorePokemon, pokemonDisplayed: $pokemonDisplayed, pokemonDisplayedTypeColor: $pokemonDisplayedTypeColor, isLoadingPokemonPageDetails: $isLoadingPokemonPageDetails, pokemonSpecies: $pokemonSpecies, pokemonEvolutionChain: $pokemonEvolutionChain, pokemonEvolutionDetails: $pokemonEvolutionDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.themeMode, themeMode) ||
                const DeepCollectionEquality()
                    .equals(other.themeMode, themeMode)) &&
            (identical(other.simplePokemonList, simplePokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.simplePokemonList, simplePokemonList)) &&
            (identical(other.pokemonList, pokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonList, pokemonList)) &&
            (identical(other.searchResultList, searchResultList) ||
                const DeepCollectionEquality()
                    .equals(other.searchResultList, searchResultList)) &&
            (identical(other.isDisplayingSearchPage, isDisplayingSearchPage) ||
                const DeepCollectionEquality().equals(
                    other.isDisplayingSearchPage, isDisplayingSearchPage)) &&
            (identical(other.isSearchingPokemon, isSearchingPokemon) ||
                const DeepCollectionEquality()
                    .equals(other.isSearchingPokemon, isSearchingPokemon)) &&
            (identical(other.isLoadingMorePokemon, isLoadingMorePokemon) ||
                const DeepCollectionEquality().equals(
                    other.isLoadingMorePokemon, isLoadingMorePokemon)) &&
            (identical(other.pokemonDisplayed, pokemonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonDisplayed, pokemonDisplayed)) &&
            (identical(other.pokemonDisplayedTypeColor,
                    pokemonDisplayedTypeColor) ||
                const DeepCollectionEquality().equals(
                    other.pokemonDisplayedTypeColor,
                    pokemonDisplayedTypeColor)) &&
            (identical(other.isLoadingPokemonPageDetails,
                    isLoadingPokemonPageDetails) ||
                const DeepCollectionEquality().equals(
                    other.isLoadingPokemonPageDetails,
                    isLoadingPokemonPageDetails)) &&
            (identical(other.pokemonSpecies, pokemonSpecies) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonSpecies, pokemonSpecies)) &&
            (identical(other.pokemonEvolutionChain, pokemonEvolutionChain) ||
                const DeepCollectionEquality().equals(
                    other.pokemonEvolutionChain, pokemonEvolutionChain)) &&
            (identical(
                    other.pokemonEvolutionDetails, pokemonEvolutionDetails) ||
                const DeepCollectionEquality().equals(
                    other.pokemonEvolutionDetails, pokemonEvolutionDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(themeMode) ^
      const DeepCollectionEquality().hash(simplePokemonList) ^
      const DeepCollectionEquality().hash(pokemonList) ^
      const DeepCollectionEquality().hash(searchResultList) ^
      const DeepCollectionEquality().hash(isDisplayingSearchPage) ^
      const DeepCollectionEquality().hash(isSearchingPokemon) ^
      const DeepCollectionEquality().hash(isLoadingMorePokemon) ^
      const DeepCollectionEquality().hash(pokemonDisplayed) ^
      const DeepCollectionEquality().hash(pokemonDisplayedTypeColor) ^
      const DeepCollectionEquality().hash(isLoadingPokemonPageDetails) ^
      const DeepCollectionEquality().hash(pokemonSpecies) ^
      const DeepCollectionEquality().hash(pokemonEvolutionChain) ^
      const DeepCollectionEquality().hash(pokemonEvolutionDetails);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {ThemeMode themeMode,
      SimplePokemonList simplePokemonList,
      List<Pokemon> pokemonList,
      List<Pokemon> searchResultList,
      bool isDisplayingSearchPage,
      bool isSearchingPokemon,
      bool isLoadingMorePokemon,
      Pokemon pokemonDisplayed,
      int pokemonDisplayedTypeColor,
      bool isLoadingPokemonPageDetails,
      PokemonSpecies pokemonSpecies,
      PokemonEvolutionChain pokemonEvolutionChain,
      List<Pokemon> pokemonEvolutionDetails}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  SimplePokemonList get simplePokemonList;
  @override
  List<Pokemon> get pokemonList;
  @override
  List<Pokemon> get searchResultList;
  @override
  bool get isDisplayingSearchPage;
  @override
  bool get isSearchingPokemon;
  @override
  bool get isLoadingMorePokemon;
  @override
  Pokemon get pokemonDisplayed;
  @override
  int get pokemonDisplayedTypeColor;
  @override
  bool get isLoadingPokemonPageDetails;
  @override
  PokemonSpecies get pokemonSpecies;
  @override
  PokemonEvolutionChain get pokemonEvolutionChain;
  @override // evolution UI needs the ID and image
  List<Pokemon> get pokemonEvolutionDetails;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith;
}
