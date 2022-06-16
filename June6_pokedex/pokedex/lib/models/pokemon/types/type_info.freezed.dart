// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'type_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TypeInfo _$TypeInfoFromJson(Map<String, dynamic> json) {
  return _TypeInfo.fromJson(json);
}

/// @nodoc
class _$TypeInfoTearOff {
  const _$TypeInfoTearOff();

// ignore: unused_element
  _TypeInfo call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) {
    return _TypeInfo(
      name: name,
      detailsUrl: detailsUrl,
    );
  }

// ignore: unused_element
  TypeInfo fromJson(Map<String, Object> json) {
    return TypeInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TypeInfo = _$TypeInfoTearOff();

/// @nodoc
mixin _$TypeInfo {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'url')
  String get detailsUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TypeInfoCopyWith<TypeInfo> get copyWith;
}

/// @nodoc
abstract class $TypeInfoCopyWith<$Res> {
  factory $TypeInfoCopyWith(TypeInfo value, $Res Function(TypeInfo) then) =
      _$TypeInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class _$TypeInfoCopyWithImpl<$Res> implements $TypeInfoCopyWith<$Res> {
  _$TypeInfoCopyWithImpl(this._value, this._then);

  final TypeInfo _value;
  // ignore: unused_field
  final $Res Function(TypeInfo) _then;

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
abstract class _$TypeInfoCopyWith<$Res> implements $TypeInfoCopyWith<$Res> {
  factory _$TypeInfoCopyWith(_TypeInfo value, $Res Function(_TypeInfo) then) =
      __$TypeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class __$TypeInfoCopyWithImpl<$Res> extends _$TypeInfoCopyWithImpl<$Res>
    implements _$TypeInfoCopyWith<$Res> {
  __$TypeInfoCopyWithImpl(_TypeInfo _value, $Res Function(_TypeInfo) _then)
      : super(_value, (v) => _then(v as _TypeInfo));

  @override
  _TypeInfo get _value => super._value as _TypeInfo;

  @override
  $Res call({
    Object name = freezed,
    Object detailsUrl = freezed,
  }) {
    return _then(_TypeInfo(
      name: name == freezed ? _value.name : name as String,
      detailsUrl:
          detailsUrl == freezed ? _value.detailsUrl : detailsUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TypeInfo implements _TypeInfo {
  _$_TypeInfo(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'url') this.detailsUrl});

  factory _$_TypeInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_TypeInfoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String detailsUrl;

  @override
  String toString() {
    return 'TypeInfo(name: $name, detailsUrl: $detailsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypeInfo &&
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
  _$TypeInfoCopyWith<_TypeInfo> get copyWith =>
      __$TypeInfoCopyWithImpl<_TypeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TypeInfoToJson(this);
  }
}

abstract class _TypeInfo implements TypeInfo {
  factory _TypeInfo(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) = _$_TypeInfo;

  factory _TypeInfo.fromJson(Map<String, dynamic> json) = _$_TypeInfo.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get detailsUrl;
  @override
  @JsonKey(ignore: true)
  _$TypeInfoCopyWith<_TypeInfo> get copyWith;
}
