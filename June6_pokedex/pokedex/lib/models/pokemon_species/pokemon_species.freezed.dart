// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonSpecies _$PokemonSpeciesFromJson(Map<String, dynamic> json) {
  return _PokemonSpecies.fromJson(json);
}

/// @nodoc
class _$PokemonSpeciesTearOff {
  const _$PokemonSpeciesTearOff();

// ignore: unused_element
  _PokemonSpecies call(
      {@JsonKey(name: 'evolution_chain')
          EvolutionChainInfo evolutionChainInfo,
      @JsonKey(name: 'flavor_text_entries')
          List<FlavorTextEntry> flavorTextEntries}) {
    return _PokemonSpecies(
      evolutionChainInfo: evolutionChainInfo,
      flavorTextEntries: flavorTextEntries,
    );
  }

// ignore: unused_element
  PokemonSpecies fromJson(Map<String, Object> json) {
    return PokemonSpecies.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonSpecies = _$PokemonSpeciesTearOff();

/// @nodoc
mixin _$PokemonSpecies {
  @JsonKey(name: 'evolution_chain')
  EvolutionChainInfo get evolutionChainInfo;
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntry> get flavorTextEntries;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonSpeciesCopyWith<PokemonSpecies> get copyWith;
}

/// @nodoc
abstract class $PokemonSpeciesCopyWith<$Res> {
  factory $PokemonSpeciesCopyWith(
          PokemonSpecies value, $Res Function(PokemonSpecies) then) =
      _$PokemonSpeciesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'evolution_chain')
          EvolutionChainInfo evolutionChainInfo,
      @JsonKey(name: 'flavor_text_entries')
          List<FlavorTextEntry> flavorTextEntries});

  $EvolutionChainInfoCopyWith<$Res> get evolutionChainInfo;
}

/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._value, this._then);

  final PokemonSpecies _value;
  // ignore: unused_field
  final $Res Function(PokemonSpecies) _then;

  @override
  $Res call({
    Object evolutionChainInfo = freezed,
    Object flavorTextEntries = freezed,
  }) {
    return _then(_value.copyWith(
      evolutionChainInfo: evolutionChainInfo == freezed
          ? _value.evolutionChainInfo
          : evolutionChainInfo as EvolutionChainInfo,
      flavorTextEntries: flavorTextEntries == freezed
          ? _value.flavorTextEntries
          : flavorTextEntries as List<FlavorTextEntry>,
    ));
  }

  @override
  $EvolutionChainInfoCopyWith<$Res> get evolutionChainInfo {
    if (_value.evolutionChainInfo == null) {
      return null;
    }
    return $EvolutionChainInfoCopyWith<$Res>(_value.evolutionChainInfo,
        (value) {
      return _then(_value.copyWith(evolutionChainInfo: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonSpeciesCopyWith<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  factory _$PokemonSpeciesCopyWith(
          _PokemonSpecies value, $Res Function(_PokemonSpecies) then) =
      __$PokemonSpeciesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'evolution_chain')
          EvolutionChainInfo evolutionChainInfo,
      @JsonKey(name: 'flavor_text_entries')
          List<FlavorTextEntry> flavorTextEntries});

  @override
  $EvolutionChainInfoCopyWith<$Res> get evolutionChainInfo;
}

/// @nodoc
class __$PokemonSpeciesCopyWithImpl<$Res>
    extends _$PokemonSpeciesCopyWithImpl<$Res>
    implements _$PokemonSpeciesCopyWith<$Res> {
  __$PokemonSpeciesCopyWithImpl(
      _PokemonSpecies _value, $Res Function(_PokemonSpecies) _then)
      : super(_value, (v) => _then(v as _PokemonSpecies));

  @override
  _PokemonSpecies get _value => super._value as _PokemonSpecies;

  @override
  $Res call({
    Object evolutionChainInfo = freezed,
    Object flavorTextEntries = freezed,
  }) {
    return _then(_PokemonSpecies(
      evolutionChainInfo: evolutionChainInfo == freezed
          ? _value.evolutionChainInfo
          : evolutionChainInfo as EvolutionChainInfo,
      flavorTextEntries: flavorTextEntries == freezed
          ? _value.flavorTextEntries
          : flavorTextEntries as List<FlavorTextEntry>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonSpecies implements _PokemonSpecies {
  _$_PokemonSpecies(
      {@JsonKey(name: 'evolution_chain') this.evolutionChainInfo,
      @JsonKey(name: 'flavor_text_entries') this.flavorTextEntries});

  factory _$_PokemonSpecies.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonSpeciesFromJson(json);

  @override
  @JsonKey(name: 'evolution_chain')
  final EvolutionChainInfo evolutionChainInfo;
  @override
  @JsonKey(name: 'flavor_text_entries')
  final List<FlavorTextEntry> flavorTextEntries;

  @override
  String toString() {
    return 'PokemonSpecies(evolutionChainInfo: $evolutionChainInfo, flavorTextEntries: $flavorTextEntries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonSpecies &&
            (identical(other.evolutionChainInfo, evolutionChainInfo) ||
                const DeepCollectionEquality()
                    .equals(other.evolutionChainInfo, evolutionChainInfo)) &&
            (identical(other.flavorTextEntries, flavorTextEntries) ||
                const DeepCollectionEquality()
                    .equals(other.flavorTextEntries, flavorTextEntries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(evolutionChainInfo) ^
      const DeepCollectionEquality().hash(flavorTextEntries);

  @JsonKey(ignore: true)
  @override
  _$PokemonSpeciesCopyWith<_PokemonSpecies> get copyWith =>
      __$PokemonSpeciesCopyWithImpl<_PokemonSpecies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonSpeciesToJson(this);
  }
}

abstract class _PokemonSpecies implements PokemonSpecies {
  factory _PokemonSpecies(
      {@JsonKey(name: 'evolution_chain')
          EvolutionChainInfo evolutionChainInfo,
      @JsonKey(name: 'flavor_text_entries')
          List<FlavorTextEntry> flavorTextEntries}) = _$_PokemonSpecies;

  factory _PokemonSpecies.fromJson(Map<String, dynamic> json) =
      _$_PokemonSpecies.fromJson;

  @override
  @JsonKey(name: 'evolution_chain')
  EvolutionChainInfo get evolutionChainInfo;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntry> get flavorTextEntries;
  @override
  @JsonKey(ignore: true)
  _$PokemonSpeciesCopyWith<_PokemonSpecies> get copyWith;
}
