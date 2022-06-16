// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_evolution_chain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonEvolutionChain _$PokemonEvolutionChainFromJson(
    Map<String, dynamic> json) {
  return _PokemonEvolutionChain.fromJson(json);
}

/// @nodoc
class _$PokemonEvolutionChainTearOff {
  const _$PokemonEvolutionChainTearOff();

// ignore: unused_element
  _PokemonEvolutionChain call({@JsonKey(name: 'chain') EvolvesTo chain}) {
    return _PokemonEvolutionChain(
      chain: chain,
    );
  }

// ignore: unused_element
  PokemonEvolutionChain fromJson(Map<String, Object> json) {
    return PokemonEvolutionChain.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonEvolutionChain = _$PokemonEvolutionChainTearOff();

/// @nodoc
mixin _$PokemonEvolutionChain {
  @JsonKey(name: 'chain')
  EvolvesTo get chain;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonEvolutionChainCopyWith<PokemonEvolutionChain> get copyWith;
}

/// @nodoc
abstract class $PokemonEvolutionChainCopyWith<$Res> {
  factory $PokemonEvolutionChainCopyWith(PokemonEvolutionChain value,
          $Res Function(PokemonEvolutionChain) then) =
      _$PokemonEvolutionChainCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'chain') EvolvesTo chain});

  $EvolvesToCopyWith<$Res> get chain;
}

/// @nodoc
class _$PokemonEvolutionChainCopyWithImpl<$Res>
    implements $PokemonEvolutionChainCopyWith<$Res> {
  _$PokemonEvolutionChainCopyWithImpl(this._value, this._then);

  final PokemonEvolutionChain _value;
  // ignore: unused_field
  final $Res Function(PokemonEvolutionChain) _then;

  @override
  $Res call({
    Object chain = freezed,
  }) {
    return _then(_value.copyWith(
      chain: chain == freezed ? _value.chain : chain as EvolvesTo,
    ));
  }

  @override
  $EvolvesToCopyWith<$Res> get chain {
    if (_value.chain == null) {
      return null;
    }
    return $EvolvesToCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonEvolutionChainCopyWith<$Res>
    implements $PokemonEvolutionChainCopyWith<$Res> {
  factory _$PokemonEvolutionChainCopyWith(_PokemonEvolutionChain value,
          $Res Function(_PokemonEvolutionChain) then) =
      __$PokemonEvolutionChainCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'chain') EvolvesTo chain});

  @override
  $EvolvesToCopyWith<$Res> get chain;
}

/// @nodoc
class __$PokemonEvolutionChainCopyWithImpl<$Res>
    extends _$PokemonEvolutionChainCopyWithImpl<$Res>
    implements _$PokemonEvolutionChainCopyWith<$Res> {
  __$PokemonEvolutionChainCopyWithImpl(_PokemonEvolutionChain _value,
      $Res Function(_PokemonEvolutionChain) _then)
      : super(_value, (v) => _then(v as _PokemonEvolutionChain));

  @override
  _PokemonEvolutionChain get _value => super._value as _PokemonEvolutionChain;

  @override
  $Res call({
    Object chain = freezed,
  }) {
    return _then(_PokemonEvolutionChain(
      chain: chain == freezed ? _value.chain : chain as EvolvesTo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonEvolutionChain implements _PokemonEvolutionChain {
  _$_PokemonEvolutionChain({@JsonKey(name: 'chain') this.chain});

  factory _$_PokemonEvolutionChain.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonEvolutionChainFromJson(json);

  @override
  @JsonKey(name: 'chain')
  final EvolvesTo chain;

  @override
  String toString() {
    return 'PokemonEvolutionChain(chain: $chain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonEvolutionChain &&
            (identical(other.chain, chain) ||
                const DeepCollectionEquality().equals(other.chain, chain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chain);

  @JsonKey(ignore: true)
  @override
  _$PokemonEvolutionChainCopyWith<_PokemonEvolutionChain> get copyWith =>
      __$PokemonEvolutionChainCopyWithImpl<_PokemonEvolutionChain>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonEvolutionChainToJson(this);
  }
}

abstract class _PokemonEvolutionChain implements PokemonEvolutionChain {
  factory _PokemonEvolutionChain({@JsonKey(name: 'chain') EvolvesTo chain}) =
      _$_PokemonEvolutionChain;

  factory _PokemonEvolutionChain.fromJson(Map<String, dynamic> json) =
      _$_PokemonEvolutionChain.fromJson;

  @override
  @JsonKey(name: 'chain')
  EvolvesTo get chain;
  @override
  @JsonKey(ignore: true)
  _$PokemonEvolutionChainCopyWith<_PokemonEvolutionChain> get copyWith;
}
