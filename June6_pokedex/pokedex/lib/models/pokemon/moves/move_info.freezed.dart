// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'move_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MoveInfo _$MoveInfoFromJson(Map<String, dynamic> json) {
  return _MoveInfo.fromJson(json);
}

/// @nodoc
class _$MoveInfoTearOff {
  const _$MoveInfoTearOff();

// ignore: unused_element
  _MoveInfo call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) {
    return _MoveInfo(
      name: name,
      detailsUrl: detailsUrl,
    );
  }

// ignore: unused_element
  MoveInfo fromJson(Map<String, Object> json) {
    return MoveInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MoveInfo = _$MoveInfoTearOff();

/// @nodoc
mixin _$MoveInfo {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'url')
  String get detailsUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MoveInfoCopyWith<MoveInfo> get copyWith;
}

/// @nodoc
abstract class $MoveInfoCopyWith<$Res> {
  factory $MoveInfoCopyWith(MoveInfo value, $Res Function(MoveInfo) then) =
      _$MoveInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class _$MoveInfoCopyWithImpl<$Res> implements $MoveInfoCopyWith<$Res> {
  _$MoveInfoCopyWithImpl(this._value, this._then);

  final MoveInfo _value;
  // ignore: unused_field
  final $Res Function(MoveInfo) _then;

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
abstract class _$MoveInfoCopyWith<$Res> implements $MoveInfoCopyWith<$Res> {
  factory _$MoveInfoCopyWith(_MoveInfo value, $Res Function(_MoveInfo) then) =
      __$MoveInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl});
}

/// @nodoc
class __$MoveInfoCopyWithImpl<$Res> extends _$MoveInfoCopyWithImpl<$Res>
    implements _$MoveInfoCopyWith<$Res> {
  __$MoveInfoCopyWithImpl(_MoveInfo _value, $Res Function(_MoveInfo) _then)
      : super(_value, (v) => _then(v as _MoveInfo));

  @override
  _MoveInfo get _value => super._value as _MoveInfo;

  @override
  $Res call({
    Object name = freezed,
    Object detailsUrl = freezed,
  }) {
    return _then(_MoveInfo(
      name: name == freezed ? _value.name : name as String,
      detailsUrl:
          detailsUrl == freezed ? _value.detailsUrl : detailsUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MoveInfo implements _MoveInfo {
  _$_MoveInfo(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'url') this.detailsUrl});

  factory _$_MoveInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_MoveInfoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'url')
  final String detailsUrl;

  @override
  String toString() {
    return 'MoveInfo(name: $name, detailsUrl: $detailsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoveInfo &&
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
  _$MoveInfoCopyWith<_MoveInfo> get copyWith =>
      __$MoveInfoCopyWithImpl<_MoveInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MoveInfoToJson(this);
  }
}

abstract class _MoveInfo implements MoveInfo {
  factory _MoveInfo(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'url') String detailsUrl}) = _$_MoveInfo;

  factory _MoveInfo.fromJson(Map<String, dynamic> json) = _$_MoveInfo.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'url')
  String get detailsUrl;
  @override
  @JsonKey(ignore: true)
  _$MoveInfoCopyWith<_MoveInfo> get copyWith;
}
