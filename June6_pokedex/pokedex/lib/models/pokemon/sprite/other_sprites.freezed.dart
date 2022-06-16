// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'other_sprites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OtherSprites _$OtherSpritesFromJson(Map<String, dynamic> json) {
  return _OtherSprites.fromJson(json);
}

/// @nodoc
class _$OtherSpritesTearOff {
  const _$OtherSpritesTearOff();

// ignore: unused_element
  _OtherSprites call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork officialArtwork}) {
    return _OtherSprites(
      officialArtwork: officialArtwork,
    );
  }

// ignore: unused_element
  OtherSprites fromJson(Map<String, Object> json) {
    return OtherSprites.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OtherSprites = _$OtherSpritesTearOff();

/// @nodoc
mixin _$OtherSprites {
  @JsonKey(name: 'official-artwork')
  OfficialArtwork get officialArtwork;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $OtherSpritesCopyWith<OtherSprites> get copyWith;
}

/// @nodoc
abstract class $OtherSpritesCopyWith<$Res> {
  factory $OtherSpritesCopyWith(
          OtherSprites value, $Res Function(OtherSprites) then) =
      _$OtherSpritesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork officialArtwork});

  $OfficialArtworkCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class _$OtherSpritesCopyWithImpl<$Res> implements $OtherSpritesCopyWith<$Res> {
  _$OtherSpritesCopyWithImpl(this._value, this._then);

  final OtherSprites _value;
  // ignore: unused_field
  final $Res Function(OtherSprites) _then;

  @override
  $Res call({
    Object officialArtwork = freezed,
  }) {
    return _then(_value.copyWith(
      officialArtwork: officialArtwork == freezed
          ? _value.officialArtwork
          : officialArtwork as OfficialArtwork,
    ));
  }

  @override
  $OfficialArtworkCopyWith<$Res> get officialArtwork {
    if (_value.officialArtwork == null) {
      return null;
    }
    return $OfficialArtworkCopyWith<$Res>(_value.officialArtwork, (value) {
      return _then(_value.copyWith(officialArtwork: value));
    });
  }
}

/// @nodoc
abstract class _$OtherSpritesCopyWith<$Res>
    implements $OtherSpritesCopyWith<$Res> {
  factory _$OtherSpritesCopyWith(
          _OtherSprites value, $Res Function(_OtherSprites) then) =
      __$OtherSpritesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork officialArtwork});

  @override
  $OfficialArtworkCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class __$OtherSpritesCopyWithImpl<$Res> extends _$OtherSpritesCopyWithImpl<$Res>
    implements _$OtherSpritesCopyWith<$Res> {
  __$OtherSpritesCopyWithImpl(
      _OtherSprites _value, $Res Function(_OtherSprites) _then)
      : super(_value, (v) => _then(v as _OtherSprites));

  @override
  _OtherSprites get _value => super._value as _OtherSprites;

  @override
  $Res call({
    Object officialArtwork = freezed,
  }) {
    return _then(_OtherSprites(
      officialArtwork: officialArtwork == freezed
          ? _value.officialArtwork
          : officialArtwork as OfficialArtwork,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OtherSprites implements _OtherSprites {
  _$_OtherSprites({@JsonKey(name: 'official-artwork') this.officialArtwork});

  factory _$_OtherSprites.fromJson(Map<String, dynamic> json) =>
      _$_$_OtherSpritesFromJson(json);

  @override
  @JsonKey(name: 'official-artwork')
  final OfficialArtwork officialArtwork;

  @override
  String toString() {
    return 'OtherSprites(officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtherSprites &&
            (identical(other.officialArtwork, officialArtwork) ||
                const DeepCollectionEquality()
                    .equals(other.officialArtwork, officialArtwork)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(officialArtwork);

  @JsonKey(ignore: true)
  @override
  _$OtherSpritesCopyWith<_OtherSprites> get copyWith =>
      __$OtherSpritesCopyWithImpl<_OtherSprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OtherSpritesToJson(this);
  }
}

abstract class _OtherSprites implements OtherSprites {
  factory _OtherSprites(
      {@JsonKey(name: 'official-artwork')
          OfficialArtwork officialArtwork}) = _$_OtherSprites;

  factory _OtherSprites.fromJson(Map<String, dynamic> json) =
      _$_OtherSprites.fromJson;

  @override
  @JsonKey(name: 'official-artwork')
  OfficialArtwork get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$OtherSpritesCopyWith<_OtherSprites> get copyWith;
}
