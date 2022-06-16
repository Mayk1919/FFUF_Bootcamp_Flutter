// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'evolves_to.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EvolvesTo _$EvolvesToFromJson(Map<String, dynamic> json) {
  return _EvolvesTo.fromJson(json);
}

/// @nodoc
class _$EvolvesToTearOff {
  const _$EvolvesToTearOff();

// ignore: unused_element
  _EvolvesTo call(
      {@JsonKey(name: 'species') SpeciesInfo speciesInfo,
      @JsonKey(name: 'evolves_to') List<EvolvesTo> evolutions}) {
    return _EvolvesTo(
      speciesInfo: speciesInfo,
      evolutions: evolutions,
    );
  }

// ignore: unused_element
  EvolvesTo fromJson(Map<String, Object> json) {
    return EvolvesTo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EvolvesTo = _$EvolvesToTearOff();

/// @nodoc
mixin _$EvolvesTo {
  @JsonKey(name: 'species')
  SpeciesInfo get speciesInfo;
  @JsonKey(name: 'evolves_to')
  List<EvolvesTo> get evolutions;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EvolvesToCopyWith<EvolvesTo> get copyWith;
}

/// @nodoc
abstract class $EvolvesToCopyWith<$Res> {
  factory $EvolvesToCopyWith(EvolvesTo value, $Res Function(EvolvesTo) then) =
      _$EvolvesToCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'species') SpeciesInfo speciesInfo,
      @JsonKey(name: 'evolves_to') List<EvolvesTo> evolutions});

  $SpeciesInfoCopyWith<$Res> get speciesInfo;
}

/// @nodoc
class _$EvolvesToCopyWithImpl<$Res> implements $EvolvesToCopyWith<$Res> {
  _$EvolvesToCopyWithImpl(this._value, this._then);

  final EvolvesTo _value;
  // ignore: unused_field
  final $Res Function(EvolvesTo) _then;

  @override
  $Res call({
    Object speciesInfo = freezed,
    Object evolutions = freezed,
  }) {
    return _then(_value.copyWith(
      speciesInfo: speciesInfo == freezed
          ? _value.speciesInfo
          : speciesInfo as SpeciesInfo,
      evolutions: evolutions == freezed
          ? _value.evolutions
          : evolutions as List<EvolvesTo>,
    ));
  }

  @override
  $SpeciesInfoCopyWith<$Res> get speciesInfo {
    if (_value.speciesInfo == null) {
      return null;
    }
    return $SpeciesInfoCopyWith<$Res>(_value.speciesInfo, (value) {
      return _then(_value.copyWith(speciesInfo: value));
    });
  }
}

/// @nodoc
abstract class _$EvolvesToCopyWith<$Res> implements $EvolvesToCopyWith<$Res> {
  factory _$EvolvesToCopyWith(
          _EvolvesTo value, $Res Function(_EvolvesTo) then) =
      __$EvolvesToCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'species') SpeciesInfo speciesInfo,
      @JsonKey(name: 'evolves_to') List<EvolvesTo> evolutions});

  @override
  $SpeciesInfoCopyWith<$Res> get speciesInfo;
}

/// @nodoc
class __$EvolvesToCopyWithImpl<$Res> extends _$EvolvesToCopyWithImpl<$Res>
    implements _$EvolvesToCopyWith<$Res> {
  __$EvolvesToCopyWithImpl(_EvolvesTo _value, $Res Function(_EvolvesTo) _then)
      : super(_value, (v) => _then(v as _EvolvesTo));

  @override
  _EvolvesTo get _value => super._value as _EvolvesTo;

  @override
  $Res call({
    Object speciesInfo = freezed,
    Object evolutions = freezed,
  }) {
    return _then(_EvolvesTo(
      speciesInfo: speciesInfo == freezed
          ? _value.speciesInfo
          : speciesInfo as SpeciesInfo,
      evolutions: evolutions == freezed
          ? _value.evolutions
          : evolutions as List<EvolvesTo>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EvolvesTo implements _EvolvesTo {
  _$_EvolvesTo(
      {@JsonKey(name: 'species') this.speciesInfo,
      @JsonKey(name: 'evolves_to') this.evolutions});

  factory _$_EvolvesTo.fromJson(Map<String, dynamic> json) =>
      _$_$_EvolvesToFromJson(json);

  @override
  @JsonKey(name: 'species')
  final SpeciesInfo speciesInfo;
  @override
  @JsonKey(name: 'evolves_to')
  final List<EvolvesTo> evolutions;

  @override
  String toString() {
    return 'EvolvesTo(speciesInfo: $speciesInfo, evolutions: $evolutions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EvolvesTo &&
            (identical(other.speciesInfo, speciesInfo) ||
                const DeepCollectionEquality()
                    .equals(other.speciesInfo, speciesInfo)) &&
            (identical(other.evolutions, evolutions) ||
                const DeepCollectionEquality()
                    .equals(other.evolutions, evolutions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speciesInfo) ^
      const DeepCollectionEquality().hash(evolutions);

  @JsonKey(ignore: true)
  @override
  _$EvolvesToCopyWith<_EvolvesTo> get copyWith =>
      __$EvolvesToCopyWithImpl<_EvolvesTo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EvolvesToToJson(this);
  }
}

abstract class _EvolvesTo implements EvolvesTo {
  factory _EvolvesTo(
      {@JsonKey(name: 'species') SpeciesInfo speciesInfo,
      @JsonKey(name: 'evolves_to') List<EvolvesTo> evolutions}) = _$_EvolvesTo;

  factory _EvolvesTo.fromJson(Map<String, dynamic> json) =
      _$_EvolvesTo.fromJson;

  @override
  @JsonKey(name: 'species')
  SpeciesInfo get speciesInfo;
  @override
  @JsonKey(name: 'evolves_to')
  List<EvolvesTo> get evolutions;
  @override
  @JsonKey(ignore: true)
  _$EvolvesToCopyWith<_EvolvesTo> get copyWith;
}
