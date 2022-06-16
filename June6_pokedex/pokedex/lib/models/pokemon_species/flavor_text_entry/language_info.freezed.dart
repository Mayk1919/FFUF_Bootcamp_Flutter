// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'language_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LanguageInfo _$LanguageInfoFromJson(Map<String, dynamic> json) {
  return _LanguageInfo.fromJson(json);
}

/// @nodoc
class _$LanguageInfoTearOff {
  const _$LanguageInfoTearOff();

// ignore: unused_element
  _LanguageInfo call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) {
    return _LanguageInfo(
      name: name,
      detailsUrl: detailsUrl,
    );
  }

// ignore: unused_element
  LanguageInfo fromJson(Map<String, Object> json) {
    return LanguageInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LanguageInfo = _$LanguageInfoTearOff();

/// @nodoc
mixin _$LanguageInfo {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'url')
  String get detailsUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LanguageInfoCopyWith<LanguageInfo> get copyWith;
}

/// @nodoc
abstract class $LanguageInfoCopyWith<$Res> {
  factory $LanguageInfoCopyWith(
          LanguageInfo value, $Res Function(LanguageInfo) then) =
      _$LanguageInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class _$LanguageInfoCopyWithImpl<$Res> implements $LanguageInfoCopyWith<$Res> {
  _$LanguageInfoCopyWithImpl(this._value, this._then);

  final LanguageInfo _value;
  // ignore: unused_field
  final $Res Function(LanguageInfo) _then;

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
abstract class _$LanguageInfoCopyWith<$Res>
    implements $LanguageInfoCopyWith<$Res> {
  factory _$LanguageInfoCopyWith(
          _LanguageInfo value, $Res Function(_LanguageInfo) then) =
      __$LanguageInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class __$LanguageInfoCopyWithImpl<$Res> extends _$LanguageInfoCopyWithImpl<$Res>
    implements _$LanguageInfoCopyWith<$Res> {
  __$LanguageInfoCopyWithImpl(
      _LanguageInfo _value, $Res Function(_LanguageInfo) _then)
      : super(_value, (v) => _then(v as _LanguageInfo));

  @override
  _LanguageInfo get _value => super._value as _LanguageInfo;

  @override
  $Res call({
    Object name = freezed,
    Object detailsUrl = freezed,
  }) {
    return _then(_LanguageInfo(
      name: name == freezed ? _value.name : name as String,
      detailsUrl:
          detailsUrl == freezed ? _value.detailsUrl : detailsUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LanguageInfo implements _LanguageInfo {
  _$_LanguageInfo(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'url') this.detailsUrl});

  factory _$_LanguageInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageInfoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String detailsUrl;

  @override
  String toString() {
    return 'LanguageInfo(name: $name, detailsUrl: $detailsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageInfo &&
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
  _$LanguageInfoCopyWith<_LanguageInfo> get copyWith =>
      __$LanguageInfoCopyWithImpl<_LanguageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageInfoToJson(this);
  }
}

abstract class _LanguageInfo implements LanguageInfo {
  factory _LanguageInfo(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) = _$_LanguageInfo;

  factory _LanguageInfo.fromJson(Map<String, dynamic> json) =
      _$_LanguageInfo.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get detailsUrl;
  @override
  @JsonKey(ignore: true)
  _$LanguageInfoCopyWith<_LanguageInfo> get copyWith;
}
