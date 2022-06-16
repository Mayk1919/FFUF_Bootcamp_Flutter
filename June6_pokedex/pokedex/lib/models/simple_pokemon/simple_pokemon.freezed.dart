// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'simple_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SimplePokemon _$SimplePokemonFromJson(Map<String, dynamic> json) {
  return _SimplePokemon.fromJson(json);
}

/// @nodoc
class _$SimplePokemonTearOff {
  const _$SimplePokemonTearOff();

// ignore: unused_element
  _SimplePokemon call(
      {@required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'url') String detailsUrl}) {
    return _SimplePokemon(
      name: name,
      detailsUrl: detailsUrl,
    );
  }

// ignore: unused_element
  SimplePokemon fromJson(Map<String, Object> json) {
    return SimplePokemon.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SimplePokemon = _$SimplePokemonTearOff();

/// @nodoc
mixin _$SimplePokemon {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'url')
  String get detailsUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SimplePokemonCopyWith<SimplePokemon> get copyWith;
}

/// @nodoc
abstract class $SimplePokemonCopyWith<$Res> {
  factory $SimplePokemonCopyWith(
          SimplePokemon value, $Res Function(SimplePokemon) then) =
      _$SimplePokemonCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class _$SimplePokemonCopyWithImpl<$Res>
    implements $SimplePokemonCopyWith<$Res> {
  _$SimplePokemonCopyWithImpl(this._value, this._then);

  final SimplePokemon _value;
  // ignore: unused_field
  final $Res Function(SimplePokemon) _then;

  @override
  $Res call({
    Object name = freezed,
    Object detailsUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      detailsUrl:
          detailsUrl == freezed ? _value.detailsUrl : detailsUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$SimplePokemonCopyWith<$Res>
    implements $SimplePokemonCopyWith<$Res> {
  factory _$SimplePokemonCopyWith(
          _SimplePokemon value, $Res Function(_SimplePokemon) then) =
      __$SimplePokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class __$SimplePokemonCopyWithImpl<$Res>
    extends _$SimplePokemonCopyWithImpl<$Res>
    implements _$SimplePokemonCopyWith<$Res> {
  __$SimplePokemonCopyWithImpl(
      _SimplePokemon _value, $Res Function(_SimplePokemon) _then)
      : super(_value, (v) => _then(v as _SimplePokemon));

  @override
  _SimplePokemon get _value => super._value as _SimplePokemon;

  @override
  $Res call({
    Object name = freezed,
    Object detailsUrl = freezed,
  }) {
    return _then(_SimplePokemon(
      name: name == freezed ? _value.name : name as String,
      detailsUrl:
          detailsUrl == freezed ? _value.detailsUrl : detailsUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SimplePokemon implements _SimplePokemon {
  _$_SimplePokemon(
      {@required @JsonKey(name: 'name') this.name,
      @required @JsonKey(name: 'url') this.detailsUrl})
      : assert(name != null),
        assert(detailsUrl != null);

  factory _$_SimplePokemon.fromJson(Map<String, dynamic> json) =>
      _$_$_SimplePokemonFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String detailsUrl;

  @override
  String toString() {
    return 'SimplePokemon(name: $name, detailsUrl: $detailsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimplePokemon &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.detailsUrl, detailsUrl) ||
                const DeepCollectionEquality()
                    .equals(other.detailsUrl, detailsUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(detailsUrl);

  @JsonKey(ignore: true)
  @override
  _$SimplePokemonCopyWith<_SimplePokemon> get copyWith =>
      __$SimplePokemonCopyWithImpl<_SimplePokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SimplePokemonToJson(this);
  }
}

abstract class _SimplePokemon implements SimplePokemon {
  factory _SimplePokemon(
      {@required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'url') String detailsUrl}) = _$_SimplePokemon;

  factory _SimplePokemon.fromJson(Map<String, dynamic> json) =
      _$_SimplePokemon.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get detailsUrl;
  @override
  @JsonKey(ignore: true)
  _$SimplePokemonCopyWith<_SimplePokemon> get copyWith;
}
