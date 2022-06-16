// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ability_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AbilityInfo _$AbilityInfoFromJson(Map<String, dynamic> json) {
  return _AbilityInfo.fromJson(json);
}

/// @nodoc
class _$AbilityInfoTearOff {
  const _$AbilityInfoTearOff();

// ignore: unused_element
  _AbilityInfo call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) {
    return _AbilityInfo(
      name: name,
      detailsUrl: detailsUrl,
    );
  }

// ignore: unused_element
  AbilityInfo fromJson(Map<String, Object> json) {
    return AbilityInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AbilityInfo = _$AbilityInfoTearOff();

/// @nodoc
mixin _$AbilityInfo {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'url')
  String get detailsUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AbilityInfoCopyWith<AbilityInfo> get copyWith;
}

/// @nodoc
abstract class $AbilityInfoCopyWith<$Res> {
  factory $AbilityInfoCopyWith(
          AbilityInfo value, $Res Function(AbilityInfo) then) =
      _$AbilityInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class _$AbilityInfoCopyWithImpl<$Res> implements $AbilityInfoCopyWith<$Res> {
  _$AbilityInfoCopyWithImpl(this._value, this._then);

  final AbilityInfo _value;
  // ignore: unused_field
  final $Res Function(AbilityInfo) _then;

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
abstract class _$AbilityInfoCopyWith<$Res>
    implements $AbilityInfoCopyWith<$Res> {
  factory _$AbilityInfoCopyWith(
          _AbilityInfo value, $Res Function(_AbilityInfo) then) =
      __$AbilityInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class __$AbilityInfoCopyWithImpl<$Res> extends _$AbilityInfoCopyWithImpl<$Res>
    implements _$AbilityInfoCopyWith<$Res> {
  __$AbilityInfoCopyWithImpl(
      _AbilityInfo _value, $Res Function(_AbilityInfo) _then)
      : super(_value, (v) => _then(v as _AbilityInfo));

  @override
  _AbilityInfo get _value => super._value as _AbilityInfo;

  @override
  $Res call({
    Object name = freezed,
    Object detailsUrl = freezed,
  }) {
    return _then(_AbilityInfo(
      name: name == freezed ? _value.name : name as String,
      detailsUrl:
          detailsUrl == freezed ? _value.detailsUrl : detailsUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AbilityInfo implements _AbilityInfo {
  _$_AbilityInfo(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'url') this.detailsUrl});

  factory _$_AbilityInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_AbilityInfoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String detailsUrl;

  @override
  String toString() {
    return 'AbilityInfo(name: $name, detailsUrl: $detailsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AbilityInfo &&
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
  _$AbilityInfoCopyWith<_AbilityInfo> get copyWith =>
      __$AbilityInfoCopyWithImpl<_AbilityInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AbilityInfoToJson(this);
  }
}

abstract class _AbilityInfo implements AbilityInfo {
  factory _AbilityInfo(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) = _$_AbilityInfo;

  factory _AbilityInfo.fromJson(Map<String, dynamic> json) =
      _$_AbilityInfo.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get detailsUrl;
  @override
  @JsonKey(ignore: true)
  _$AbilityInfoCopyWith<_AbilityInfo> get copyWith;
}
