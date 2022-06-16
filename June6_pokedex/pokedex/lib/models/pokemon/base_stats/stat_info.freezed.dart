// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stat_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StatInfo _$StatInfoFromJson(Map<String, dynamic> json) {
  return _StatInfo.fromJson(json);
}

/// @nodoc
class _$StatInfoTearOff {
  const _$StatInfoTearOff();

// ignore: unused_element
  _StatInfo call(
      {@required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'url') String detailsUrl}) {
    return _StatInfo(
      name: name,
      detailsUrl: detailsUrl,
    );
  }

// ignore: unused_element
  StatInfo fromJson(Map<String, Object> json) {
    return StatInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StatInfo = _$StatInfoTearOff();

/// @nodoc
mixin _$StatInfo {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'url')
  String get detailsUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $StatInfoCopyWith<StatInfo> get copyWith;
}

/// @nodoc
abstract class $StatInfoCopyWith<$Res> {
  factory $StatInfoCopyWith(StatInfo value, $Res Function(StatInfo) then) =
      _$StatInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class _$StatInfoCopyWithImpl<$Res> implements $StatInfoCopyWith<$Res> {
  _$StatInfoCopyWithImpl(this._value, this._then);

  final StatInfo _value;
  // ignore: unused_field
  final $Res Function(StatInfo) _then;

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
abstract class _$StatInfoCopyWith<$Res> implements $StatInfoCopyWith<$Res> {
  factory _$StatInfoCopyWith(_StatInfo value, $Res Function(_StatInfo) then) =
      __$StatInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class __$StatInfoCopyWithImpl<$Res> extends _$StatInfoCopyWithImpl<$Res>
    implements _$StatInfoCopyWith<$Res> {
  __$StatInfoCopyWithImpl(_StatInfo _value, $Res Function(_StatInfo) _then)
      : super(_value, (v) => _then(v as _StatInfo));

  @override
  _StatInfo get _value => super._value as _StatInfo;

  @override
  $Res call({
    Object name = freezed,
    Object detailsUrl = freezed,
  }) {
    return _then(_StatInfo(
      name: name == freezed ? _value.name : name as String,
      detailsUrl:
          detailsUrl == freezed ? _value.detailsUrl : detailsUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StatInfo implements _StatInfo {
  _$_StatInfo(
      {@required @JsonKey(name: 'name') this.name,
      @required @JsonKey(name: 'url') this.detailsUrl})
      : assert(name != null),
        assert(detailsUrl != null);

  factory _$_StatInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_StatInfoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String detailsUrl;

  @override
  String toString() {
    return 'StatInfo(name: $name, detailsUrl: $detailsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatInfo &&
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
  _$StatInfoCopyWith<_StatInfo> get copyWith =>
      __$StatInfoCopyWithImpl<_StatInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatInfoToJson(this);
  }
}

abstract class _StatInfo implements StatInfo {
  factory _StatInfo(
      {@required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'url') String detailsUrl}) = _$_StatInfo;

  factory _StatInfo.fromJson(Map<String, dynamic> json) = _$_StatInfo.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get detailsUrl;
  @override
  @JsonKey(ignore: true)
  _$StatInfoCopyWith<_StatInfo> get copyWith;
}
