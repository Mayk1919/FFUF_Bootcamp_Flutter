// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) {
  return _PokemonType.fromJson(json);
}

/// @nodoc
class _$PokemonTypeTearOff {
  const _$PokemonTypeTearOff();

// ignore: unused_element
  _PokemonType call(
      {@JsonKey(name: 'slot') int slot,
      @JsonKey(name: 'type') TypeInfo typeInfo}) {
    return _PokemonType(
      slot: slot,
      typeInfo: typeInfo,
    );
  }

// ignore: unused_element
  PokemonType fromJson(Map<String, Object> json) {
    return PokemonType.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonType = _$PokemonTypeTearOff();

/// @nodoc
mixin _$PokemonType {
  @JsonKey(name: 'slot')
  int get slot;
  @JsonKey(name: 'type')
  TypeInfo get typeInfo;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonTypeCopyWith<PokemonType> get copyWith;
}

/// @nodoc
abstract class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) then) =
      _$PokemonTypeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'slot') int slot,
      @JsonKey(name: 'type') TypeInfo typeInfo});

  $TypeInfoCopyWith<$Res> get typeInfo;
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res> implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._value, this._then);

  final PokemonType _value;
  // ignore: unused_field
  final $Res Function(PokemonType) _then;

  @override
  $Res call({
    Object slot = freezed,
    Object typeInfo = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed ? _value.slot : slot as int,
      typeInfo: typeInfo == freezed ? _value.typeInfo : typeInfo as TypeInfo,
    ));
  }

  @override
  $TypeInfoCopyWith<$Res> get typeInfo {
    if (_value.typeInfo == null) {
      return null;
    }
    return $TypeInfoCopyWith<$Res>(_value.typeInfo, (value) {
      return _then(_value.copyWith(typeInfo: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonTypeCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$PokemonTypeCopyWith(
          _PokemonType value, $Res Function(_PokemonType) then) =
      __$PokemonTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'slot') int slot,
      @JsonKey(name: 'type') TypeInfo typeInfo});

  @override
  $TypeInfoCopyWith<$Res> get typeInfo;
}

/// @nodoc
class __$PokemonTypeCopyWithImpl<$Res> extends _$PokemonTypeCopyWithImpl<$Res>
    implements _$PokemonTypeCopyWith<$Res> {
  __$PokemonTypeCopyWithImpl(
      _PokemonType _value, $Res Function(_PokemonType) _then)
      : super(_value, (v) => _then(v as _PokemonType));

  @override
  _PokemonType get _value => super._value as _PokemonType;

  @override
  $Res call({
    Object slot = freezed,
    Object typeInfo = freezed,
  }) {
    return _then(_PokemonType(
      slot: slot == freezed ? _value.slot : slot as int,
      typeInfo: typeInfo == freezed ? _value.typeInfo : typeInfo as TypeInfo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonType implements _PokemonType {
  _$_PokemonType(
      {@JsonKey(name: 'slot') this.slot, @JsonKey(name: 'type') this.typeInfo});

  factory _$_PokemonType.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonTypeFromJson(json);

  @override
  @JsonKey(name: 'slot')
  final int slot;
  @override
  @JsonKey(name: 'type')
  final TypeInfo typeInfo;

  @override
  String toString() {
    return 'PokemonType(slot: $slot, typeInfo: $typeInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonType &&
            (identical(other.slot, slot) ||
                const DeepCollectionEquality().equals(other.slot, slot)) &&
            (identical(other.typeInfo, typeInfo) ||
                const DeepCollectionEquality()
                    .equals(other.typeInfo, typeInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slot) ^
      const DeepCollectionEquality().hash(typeInfo);

  @JsonKey(ignore: true)
  @override
  _$PokemonTypeCopyWith<_PokemonType> get copyWith =>
      __$PokemonTypeCopyWithImpl<_PokemonType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonTypeToJson(this);
  }
}

abstract class _PokemonType implements PokemonType {
  factory _PokemonType(
      {@JsonKey(name: 'slot') int slot,
      @JsonKey(name: 'type') TypeInfo typeInfo}) = _$_PokemonType;

  factory _PokemonType.fromJson(Map<String, dynamic> json) =
      _$_PokemonType.fromJson;

  @override
  @JsonKey(name: 'slot')
  int get slot;
  @override
  @JsonKey(name: 'type')
  TypeInfo get typeInfo;
  @override
  @JsonKey(ignore: true)
  _$PokemonTypeCopyWith<_PokemonType> get copyWith;
}
