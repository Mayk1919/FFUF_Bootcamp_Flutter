// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'official_artwork.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) {
  return _OfficialArtwork.fromJson(json);
}

/// @nodoc
class _$OfficialArtworkTearOff {
  const _$OfficialArtworkTearOff();

// ignore: unused_element
  _OfficialArtwork call({@JsonKey(name: 'front_default') String imageUrl}) {
    return _OfficialArtwork(
      imageUrl: imageUrl,
    );
  }

// ignore: unused_element
  OfficialArtwork fromJson(Map<String, Object> json) {
    return OfficialArtwork.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OfficialArtwork = _$OfficialArtworkTearOff();

/// @nodoc
mixin _$OfficialArtwork {
  @JsonKey(name: 'front_default')
  String get imageUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $OfficialArtworkCopyWith<OfficialArtwork> get copyWith;
}

/// @nodoc
abstract class $OfficialArtworkCopyWith<$Res> {
  factory $OfficialArtworkCopyWith(
          OfficialArtwork value, $Res Function(OfficialArtwork) then) =
      _$OfficialArtworkCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'front_default') String imageUrl});
}

/// @nodoc
class _$OfficialArtworkCopyWithImpl<$Res>
    implements $OfficialArtworkCopyWith<$Res> {
  _$OfficialArtworkCopyWithImpl(this._value, this._then);

  final OfficialArtwork _value;
  // ignore: unused_field
  final $Res Function(OfficialArtwork) _then;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$OfficialArtworkCopyWith<$Res>
    implements $OfficialArtworkCopyWith<$Res> {
  factory _$OfficialArtworkCopyWith(
          _OfficialArtwork value, $Res Function(_OfficialArtwork) then) =
      __$OfficialArtworkCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'front_default') String imageUrl});
}

/// @nodoc
class __$OfficialArtworkCopyWithImpl<$Res>
    extends _$OfficialArtworkCopyWithImpl<$Res>
    implements _$OfficialArtworkCopyWith<$Res> {
  __$OfficialArtworkCopyWithImpl(
      _OfficialArtwork _value, $Res Function(_OfficialArtwork) _then)
      : super(_value, (v) => _then(v as _OfficialArtwork));

  @override
  _OfficialArtwork get _value => super._value as _OfficialArtwork;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(_OfficialArtwork(
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OfficialArtwork implements _OfficialArtwork {
  _$_OfficialArtwork({@JsonKey(name: 'front_default') this.imageUrl});

  factory _$_OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$_$_OfficialArtworkFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String imageUrl;

  @override
  String toString() {
    return 'OfficialArtwork(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfficialArtwork &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$OfficialArtworkCopyWith<_OfficialArtwork> get copyWith =>
      __$OfficialArtworkCopyWithImpl<_OfficialArtwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OfficialArtworkToJson(this);
  }
}

abstract class _OfficialArtwork implements OfficialArtwork {
  factory _OfficialArtwork({@JsonKey(name: 'front_default') String imageUrl}) =
      _$_OfficialArtwork;

  factory _OfficialArtwork.fromJson(Map<String, dynamic> json) =
      _$_OfficialArtwork.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$OfficialArtworkCopyWith<_OfficialArtwork> get copyWith;
}
