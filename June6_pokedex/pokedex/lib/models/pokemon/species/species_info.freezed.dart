// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'species_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SpeciesInfo _$SpeciesInfoFromJson(Map<String, dynamic> json) {
  return _SpeciesInfo.fromJson(json);
}

/// @nodoc
class _$SpeciesInfoTearOff {
  const _$SpeciesInfoTearOff();

// ignore: unused_element
  _SpeciesInfo call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) {
    return _SpeciesInfo(
      name: name,
      detailsUrl: detailsUrl,
    );
  }

// ignore: unused_element
  SpeciesInfo fromJson(Map<String, Object> json) {
    return SpeciesInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SpeciesInfo = _$SpeciesInfoTearOff();

/// @nodoc
mixin _$SpeciesInfo {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'url')
  String get detailsUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SpeciesInfoCopyWith<SpeciesInfo> get copyWith;
}

/// @nodoc
abstract class $SpeciesInfoCopyWith<$Res> {
  factory $SpeciesInfoCopyWith(
          SpeciesInfo value, $Res Function(SpeciesInfo) then) =
      _$SpeciesInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class _$SpeciesInfoCopyWithImpl<$Res> implements $SpeciesInfoCopyWith<$Res> {
  _$SpeciesInfoCopyWithImpl(this._value, this._then);

  final SpeciesInfo _value;
  // ignore: unused_field
  final $Res Function(SpeciesInfo) _then;

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
abstract class _$SpeciesInfoCopyWith<$Res>
    implements $SpeciesInfoCopyWith<$Res> {
  factory _$SpeciesInfoCopyWith(
          _SpeciesInfo value, $Res Function(_SpeciesInfo) then) =
      __$SpeciesInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class __$SpeciesInfoCopyWithImpl<$Res> extends _$SpeciesInfoCopyWithImpl<$Res>
    implements _$SpeciesInfoCopyWith<$Res> {
  __$SpeciesInfoCopyWithImpl(
      _SpeciesInfo _value, $Res Function(_SpeciesInfo) _then)
      : super(_value, (v) => _then(v as _SpeciesInfo));

  @override
  _SpeciesInfo get _value => super._value as _SpeciesInfo;

  @override
  $Res call({
    Object name = freezed,
    Object detailsUrl = freezed,
  }) {
    return _then(_SpeciesInfo(
      name: name == freezed ? _value.name : name as String,
      detailsUrl:
          detailsUrl == freezed ? _value.detailsUrl : detailsUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SpeciesInfo implements _SpeciesInfo {
  _$_SpeciesInfo(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'url') this.detailsUrl});

  factory _$_SpeciesInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_SpeciesInfoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String detailsUrl;

  @override
  String toString() {
    return 'SpeciesInfo(name: $name, detailsUrl: $detailsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpeciesInfo &&
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
  _$SpeciesInfoCopyWith<_SpeciesInfo> get copyWith =>
      __$SpeciesInfoCopyWithImpl<_SpeciesInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SpeciesInfoToJson(this);
  }
}

abstract class _SpeciesInfo implements SpeciesInfo {
  factory _SpeciesInfo(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) = _$_SpeciesInfo;

  factory _SpeciesInfo.fromJson(Map<String, dynamic> json) =
      _$_SpeciesInfo.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get detailsUrl;
  @override
  @JsonKey(ignore: true)
  _$SpeciesInfoCopyWith<_SpeciesInfo> get copyWith;
}
