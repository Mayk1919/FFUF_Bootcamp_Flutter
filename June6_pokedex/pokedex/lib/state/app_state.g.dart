// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$_$_AppStateFromJson(Map<String, dynamic> json) {
  return _$_AppState(
    themeMode: _$enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
        ThemeMode.system,
    simplePokemonList: json['simplePokemonList'] == null
        ? null
        : SimplePokemonList.fromJson(
            json['simplePokemonList'] as Map<String, dynamic>),
    pokemonList: (json['pokemonList'] as List)
            ?.map((e) =>
                e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    searchResultList: (json['searchResultList'] as List)
            ?.map((e) =>
                e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    isDisplayingSearchPage: json['isDisplayingSearchPage'] as bool ?? false,
    isSearchingPokemon: json['isSearchingPokemon'] as bool ?? false,
    isLoadingMorePokemon: json['isLoadingMorePokemon'] as bool ?? false,
    pokemonDisplayed: json['pokemonDisplayed'] == null
        ? null
        : Pokemon.fromJson(json['pokemonDisplayed'] as Map<String, dynamic>),
    pokemonDisplayedTypeColor: json['pokemonDisplayedTypeColor'] as int ?? 0,
    isLoadingPokemonPageDetails:
        json['isLoadingPokemonPageDetails'] as bool ?? false,
    pokemonSpecies: json['pokemonSpecies'] == null
        ? null
        : PokemonSpecies.fromJson(
            json['pokemonSpecies'] as Map<String, dynamic>),
    pokemonEvolutionChain: json['pokemonEvolutionChain'] == null
        ? null
        : PokemonEvolutionChain.fromJson(
            json['pokemonEvolutionChain'] as Map<String, dynamic>),
    pokemonEvolutionDetails: (json['pokemonEvolutionDetails'] as List)
            ?.map((e) =>
                e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode],
      'simplePokemonList': instance.simplePokemonList,
      'pokemonList': instance.pokemonList,
      'searchResultList': instance.searchResultList,
      'isDisplayingSearchPage': instance.isDisplayingSearchPage,
      'isSearchingPokemon': instance.isSearchingPokemon,
      'isLoadingMorePokemon': instance.isLoadingMorePokemon,
      'pokemonDisplayed': instance.pokemonDisplayed,
      'pokemonDisplayedTypeColor': instance.pokemonDisplayedTypeColor,
      'isLoadingPokemonPageDetails': instance.isLoadingPokemonPageDetails,
      'pokemonSpecies': instance.pokemonSpecies,
      'pokemonEvolutionChain': instance.pokemonEvolutionChain,
      'pokemonEvolutionDetails': instance.pokemonEvolutionDetails,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
