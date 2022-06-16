// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_base_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonBaseStat _$PokemonBaseStatFromJson(Map<String, dynamic> json) {
  return _PokemonBaseStat.fromJson(json);
}

/// @nodoc
class _$PokemonBaseStatTearOff {
  const _$PokemonBaseStatTearOff();

// ignore: unused_element
  _PokemonBaseStat call(
      {@JsonKey(name: 'base_stat') int baseStat,
      @JsonKey(name: 'stat') StatInfo statInfo}) {
    return _PokemonBaseStat(
      baseStat: baseStat,
      statInfo: statInfo,
    );
  }

// ignore: unused_element
  PokemonBaseStat fromJson(Map<String, Object> json) {
    return PokemonBaseStat.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonBaseStat = _$PokemonBaseStatTearOff();

/// @nodoc
mixin _$PokemonBaseStat {
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @JsonKey(name: 'stat')
  StatInfo get statInfo;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonBaseStatCopyWith<PokemonBaseStat> get copyWith;
}

/// @nodoc
abstract class $PokemonBaseStatCopyWith<$Res> {
  factory $PokemonBaseStatCopyWith(
          PokemonBaseStat value, $Res Function(PokemonBaseStat) then) =
      _$PokemonBaseStatCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat,
      @JsonKey(name: 'stat') StatInfo statInfo});

  $StatInfoCopyWith<$Res> get statInfo;
}

/// @nodoc
class _$PokemonBaseStatCopyWithImpl<$Res>
    implements $PokemonBaseStatCopyWith<$Res> {
  _$PokemonBaseStatCopyWithImpl(this._value, this._then);

  final PokemonBaseStat _value;
  // ignore: unused_field
  final $Res Function(PokemonBaseStat) _then;

  @override
  $Res call({
    Object baseStat = freezed,
    Object statInfo = freezed,
  }) {
    return _then(_value.copyWith(
      baseStat: baseStat == freezed ? _value.baseStat : baseStat as int,
      statInfo: statInfo == freezed ? _value.statInfo : statInfo as StatInfo,
    ));
  }

  @override
  $StatInfoCopyWith<$Res> get statInfo {
    if (_value.statInfo == null) {
      return null;
    }
    return $StatInfoCopyWith<$Res>(_value.statInfo, (value) {
      return _then(_value.copyWith(statInfo: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonBaseStatCopyWith<$Res>
    implements $PokemonBaseStatCopyWith<$Res> {
  factory _$PokemonBaseStatCopyWith(
          _PokemonBaseStat value, $Res Function(_PokemonBaseStat) then) =
      __$PokemonBaseStatCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat,
      @JsonKey(name: 'stat') StatInfo statInfo});

  @override
  $StatInfoCopyWith<$Res> get statInfo;
}

/// @nodoc
class __$PokemonBaseStatCopyWithImpl<$Res>
    extends _$PokemonBaseStatCopyWithImpl<$Res>
    implements _$PokemonBaseStatCopyWith<$Res> {
  __$PokemonBaseStatCopyWithImpl(
      _PokemonBaseStat _value, $Res Function(_PokemonBaseStat) _then)
      : super(_value, (v) => _then(v as _PokemonBaseStat));

  @override
  _PokemonBaseStat get _value => super._value as _PokemonBaseStat;

  @override
  $Res call({
    Object baseStat = freezed,
    Object statInfo = freezed,
  }) {
    return _then(_PokemonBaseStat(
      baseStat: baseStat == freezed ? _value.baseStat : baseStat as int,
      statInfo: statInfo == freezed ? _value.statInfo : statInfo as StatInfo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonBaseStat implements _PokemonBaseStat {
  _$_PokemonBaseStat(
      {@JsonKey(name: 'base_stat') this.baseStat,
      @JsonKey(name: 'stat') this.statInfo});

  factory _$_PokemonBaseStat.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonBaseStatFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  @JsonKey(name: 'stat')
  final StatInfo statInfo;

  @override
  String toString() {
    return 'PokemonBaseStat(baseStat: $baseStat, statInfo: $statInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonBaseStat &&
            (identical(other.baseStat, baseStat) ||
                const DeepCollectionEquality()
                    .equals(other.baseStat, baseStat)) &&
            (identical(other.statInfo, statInfo) ||
                const DeepCollectionEquality()
                    .equals(other.statInfo, statInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(baseStat) ^
      const DeepCollectionEquality().hash(statInfo);

  @JsonKey(ignore: true)
  @override
  _$PokemonBaseStatCopyWith<_PokemonBaseStat> get copyWith =>
      __$PokemonBaseStatCopyWithImpl<_PokemonBaseStat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonBaseStatToJson(this);
  }
}

abstract class _PokemonBaseStat implements PokemonBaseStat {
  factory _PokemonBaseStat(
      {@JsonKey(name: 'base_stat') int baseStat,
      @JsonKey(name: 'stat') StatInfo statInfo}) = _$_PokemonBaseStat;

  factory _PokemonBaseStat.fromJson(Map<String, dynamic> json) =
      _$_PokemonBaseStat.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  @JsonKey(name: 'stat')
  StatInfo get statInfo;
  @override
  @JsonKey(ignore: true)
  _$PokemonBaseStatCopyWith<_PokemonBaseStat> get copyWith;
}
