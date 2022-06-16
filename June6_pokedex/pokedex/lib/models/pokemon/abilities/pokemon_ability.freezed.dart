// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonAbility _$PokemonAbilityFromJson(Map<String, dynamic> json) {
  return _PokemonAbility.fromJson(json);
}

/// @nodoc
class _$PokemonAbilityTearOff {
  const _$PokemonAbilityTearOff();

// ignore: unused_element
  _PokemonAbility call({@JsonKey(name: 'ability') AbilityInfo abilityInfo}) {
    return _PokemonAbility(
      abilityInfo: abilityInfo,
    );
  }

// ignore: unused_element
  PokemonAbility fromJson(Map<String, Object> json) {
    return PokemonAbility.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonAbility = _$PokemonAbilityTearOff();

/// @nodoc
mixin _$PokemonAbility {
  @JsonKey(name: 'ability')
  AbilityInfo get abilityInfo;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonAbilityCopyWith<PokemonAbility> get copyWith;
}

/// @nodoc
abstract class $PokemonAbilityCopyWith<$Res> {
  factory $PokemonAbilityCopyWith(
          PokemonAbility value, $Res Function(PokemonAbility) then) =
      _$PokemonAbilityCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'ability') AbilityInfo abilityInfo});

  $AbilityInfoCopyWith<$Res> get abilityInfo;
}

/// @nodoc
class _$PokemonAbilityCopyWithImpl<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  _$PokemonAbilityCopyWithImpl(this._value, this._then);

  final PokemonAbility _value;
  // ignore: unused_field
  final $Res Function(PokemonAbility) _then;

  @override
  $Res call({
    Object abilityInfo = freezed,
  }) {
    return _then(_value.copyWith(
      abilityInfo: abilityInfo == freezed
          ? _value.abilityInfo
          : abilityInfo as AbilityInfo,
    ));
  }

  @override
  $AbilityInfoCopyWith<$Res> get abilityInfo {
    if (_value.abilityInfo == null) {
      return null;
    }
    return $AbilityInfoCopyWith<$Res>(_value.abilityInfo, (value) {
      return _then(_value.copyWith(abilityInfo: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonAbilityCopyWith<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  factory _$PokemonAbilityCopyWith(
          _PokemonAbility value, $Res Function(_PokemonAbility) then) =
      __$PokemonAbilityCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'ability') AbilityInfo abilityInfo});

  @override
  $AbilityInfoCopyWith<$Res> get abilityInfo;
}

/// @nodoc
class __$PokemonAbilityCopyWithImpl<$Res>
    extends _$PokemonAbilityCopyWithImpl<$Res>
    implements _$PokemonAbilityCopyWith<$Res> {
  __$PokemonAbilityCopyWithImpl(
      _PokemonAbility _value, $Res Function(_PokemonAbility) _then)
      : super(_value, (v) => _then(v as _PokemonAbility));

  @override
  _PokemonAbility get _value => super._value as _PokemonAbility;

  @override
  $Res call({
    Object abilityInfo = freezed,
  }) {
    return _then(_PokemonAbility(
      abilityInfo: abilityInfo == freezed
          ? _value.abilityInfo
          : abilityInfo as AbilityInfo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonAbility implements _PokemonAbility {
  _$_PokemonAbility({@JsonKey(name: 'ability') this.abilityInfo});

  factory _$_PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonAbilityFromJson(json);

  @override
  @JsonKey(name: 'ability')
  final AbilityInfo abilityInfo;

  @override
  String toString() {
    return 'PokemonAbility(abilityInfo: $abilityInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonAbility &&
            (identical(other.abilityInfo, abilityInfo) ||
                const DeepCollectionEquality()
                    .equals(other.abilityInfo, abilityInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(abilityInfo);

  @JsonKey(ignore: true)
  @override
  _$PokemonAbilityCopyWith<_PokemonAbility> get copyWith =>
      __$PokemonAbilityCopyWithImpl<_PokemonAbility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonAbilityToJson(this);
  }
}

abstract class _PokemonAbility implements PokemonAbility {
  factory _PokemonAbility({@JsonKey(name: 'ability') AbilityInfo abilityInfo}) =
      _$_PokemonAbility;

  factory _PokemonAbility.fromJson(Map<String, dynamic> json) =
      _$_PokemonAbility.fromJson;

  @override
  @JsonKey(name: 'ability')
  AbilityInfo get abilityInfo;
  @override
  @JsonKey(ignore: true)
  _$PokemonAbilityCopyWith<_PokemonAbility> get copyWith;
}
