// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pokemon_sprites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) {
  return _PokemonSprites.fromJson(json);
}

/// @nodoc
class _$PokemonSpritesTearOff {
  const _$PokemonSpritesTearOff();

// ignore: unused_element
  _PokemonSprites call(
      {@JsonKey(name: 'front_default') String frontDefaultImageUrl,
      @JsonKey(name: 'other') OtherSprites otherSprites}) {
    return _PokemonSprites(
      frontDefaultImageUrl: frontDefaultImageUrl,
      otherSprites: otherSprites,
    );
  }

// ignore: unused_element
  PokemonSprites fromJson(Map<String, Object> json) {
    return PokemonSprites.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PokemonSprites = _$PokemonSpritesTearOff();

/// @nodoc
mixin _$PokemonSprites {
  @JsonKey(name: 'front_default')
  String get frontDefaultImageUrl;
  @JsonKey(name: 'other')
  OtherSprites get otherSprites;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PokemonSpritesCopyWith<PokemonSprites> get copyWith;
}

/// @nodoc
abstract class $PokemonSpritesCopyWith<$Res> {
  factory $PokemonSpritesCopyWith(
          PokemonSprites value, $Res Function(PokemonSprites) then) =
      _$PokemonSpritesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefaultImageUrl,
      @JsonKey(name: 'other') OtherSprites otherSprites});

  $OtherSpritesCopyWith<$Res> get otherSprites;
}

/// @nodoc
class _$PokemonSpritesCopyWithImpl<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  _$PokemonSpritesCopyWithImpl(this._value, this._then);

  final PokemonSprites _value;
  // ignore: unused_field
  final $Res Function(PokemonSprites) _then;

  @override
  $Res call({
    Object frontDefaultImageUrl = freezed,
    Object otherSprites = freezed,
  }) {
    return _then(_value.copyWith(
      frontDefaultImageUrl: frontDefaultImageUrl == freezed
          ? _value.frontDefaultImageUrl
          : frontDefaultImageUrl as String,
      otherSprites: otherSprites == freezed
          ? _value.otherSprites
          : otherSprites as OtherSprites,
    ));
  }

  @override
  $OtherSpritesCopyWith<$Res> get otherSprites {
    if (_value.otherSprites == null) {
      return null;
    }
    return $OtherSpritesCopyWith<$Res>(_value.otherSprites, (value) {
      return _then(_value.copyWith(otherSprites: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonSpritesCopyWith<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  factory _$PokemonSpritesCopyWith(
          _PokemonSprites value, $Res Function(_PokemonSprites) then) =
      __$PokemonSpritesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefaultImageUrl,
      @JsonKey(name: 'other') OtherSprites otherSprites});

  @override
  $OtherSpritesCopyWith<$Res> get otherSprites;
}

/// @nodoc
class __$PokemonSpritesCopyWithImpl<$Res>
    extends _$PokemonSpritesCopyWithImpl<$Res>
    implements _$PokemonSpritesCopyWith<$Res> {
  __$PokemonSpritesCopyWithImpl(
      _PokemonSprites _value, $Res Function(_PokemonSprites) _then)
      : super(_value, (v) => _then(v as _PokemonSprites));

  @override
  _PokemonSprites get _value => super._value as _PokemonSprites;

  @override
  $Res call({
    Object frontDefaultImageUrl = freezed,
    Object otherSprites = freezed,
  }) {
    return _then(_PokemonSprites(
      frontDefaultImageUrl: frontDefaultImageUrl == freezed
          ? _value.frontDefaultImageUrl
          : frontDefaultImageUrl as String,
      otherSprites: otherSprites == freezed
          ? _value.otherSprites
          : otherSprites as OtherSprites,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PokemonSprites implements _PokemonSprites {
  _$_PokemonSprites(
      {@JsonKey(name: 'front_default') this.frontDefaultImageUrl,
      @JsonKey(name: 'other') this.otherSprites});

  factory _$_PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonSpritesFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefaultImageUrl;
  @override
  @JsonKey(name: 'other')
  final OtherSprites otherSprites;

  @override
  String toString() {
    return 'PokemonSprites(frontDefaultImageUrl: $frontDefaultImageUrl, otherSprites: $otherSprites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonSprites &&
            (identical(other.frontDefaultImageUrl, frontDefaultImageUrl) ||
                const DeepCollectionEquality().equals(
                    other.frontDefaultImageUrl, frontDefaultImageUrl)) &&
            (identical(other.otherSprites, otherSprites) ||
                const DeepCollectionEquality()
                    .equals(other.otherSprites, otherSprites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(frontDefaultImageUrl) ^
      const DeepCollectionEquality().hash(otherSprites);

  @JsonKey(ignore: true)
  @override
  _$PokemonSpritesCopyWith<_PokemonSprites> get copyWith =>
      __$PokemonSpritesCopyWithImpl<_PokemonSprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonSpritesToJson(this);
  }
}

abstract class _PokemonSprites implements PokemonSprites {
  factory _PokemonSprites(
      {@JsonKey(name: 'front_default') String frontDefaultImageUrl,
      @JsonKey(name: 'other') OtherSprites otherSprites}) = _$_PokemonSprites;

  factory _PokemonSprites.fromJson(Map<String, dynamic> json) =
      _$_PokemonSprites.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefaultImageUrl;
  @override
  @JsonKey(name: 'other')
  OtherSprites get otherSprites;
  @override
  @JsonKey(ignore: true)
  _$PokemonSpritesCopyWith<_PokemonSprites> get copyWith;
}
