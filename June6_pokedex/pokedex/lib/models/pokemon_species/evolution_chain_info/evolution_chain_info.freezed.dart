// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'evolution_chain_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EvolutionChainInfo _$EvolutionChainInfoFromJson(Map<String, dynamic> json) {
  return _EvolutionChainInfo.fromJson(json);
}

/// @nodoc
class _$EvolutionChainInfoTearOff {
  const _$EvolutionChainInfoTearOff();

// ignore: unused_element
  _EvolutionChainInfo call({@JsonKey(name: 'url') String url}) {
    return _EvolutionChainInfo(
      url: url,
    );
  }

// ignore: unused_element
  EvolutionChainInfo fromJson(Map<String, Object> json) {
    return EvolutionChainInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EvolutionChainInfo = _$EvolutionChainInfoTearOff();

/// @nodoc
mixin _$EvolutionChainInfo {
  @JsonKey(name: 'url')
  String get url;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EvolutionChainInfoCopyWith<EvolutionChainInfo> get copyWith;
}

/// @nodoc
abstract class $EvolutionChainInfoCopyWith<$Res> {
  factory $EvolutionChainInfoCopyWith(
          EvolutionChainInfo value, $Res Function(EvolutionChainInfo) then) =
      _$EvolutionChainInfoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'url') String url});
}

/// @nodoc
class _$EvolutionChainInfoCopyWithImpl<$Res>
    implements $EvolutionChainInfoCopyWith<$Res> {
  _$EvolutionChainInfoCopyWithImpl(this._value, this._then);

  final EvolutionChainInfo _value;
  // ignore: unused_field
  final $Res Function(EvolutionChainInfo) _then;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$EvolutionChainInfoCopyWith<$Res>
    implements $EvolutionChainInfoCopyWith<$Res> {
  factory _$EvolutionChainInfoCopyWith(
          _EvolutionChainInfo value, $Res Function(_EvolutionChainInfo) then) =
      __$EvolutionChainInfoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'url') String url});
}

/// @nodoc
class __$EvolutionChainInfoCopyWithImpl<$Res>
    extends _$EvolutionChainInfoCopyWithImpl<$Res>
    implements _$EvolutionChainInfoCopyWith<$Res> {
  __$EvolutionChainInfoCopyWithImpl(
      _EvolutionChainInfo _value, $Res Function(_EvolutionChainInfo) _then)
      : super(_value, (v) => _then(v as _EvolutionChainInfo));

  @override
  _EvolutionChainInfo get _value => super._value as _EvolutionChainInfo;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_EvolutionChainInfo(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EvolutionChainInfo implements _EvolutionChainInfo {
  _$_EvolutionChainInfo({@JsonKey(name: 'url') this.url});

  factory _$_EvolutionChainInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_EvolutionChainInfoFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'EvolutionChainInfo(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EvolutionChainInfo &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$EvolutionChainInfoCopyWith<_EvolutionChainInfo> get copyWith =>
      __$EvolutionChainInfoCopyWithImpl<_EvolutionChainInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EvolutionChainInfoToJson(this);
  }
}

abstract class _EvolutionChainInfo implements EvolutionChainInfo {
  factory _EvolutionChainInfo({@JsonKey(name: 'url') String url}) =
      _$_EvolutionChainInfo;

  factory _EvolutionChainInfo.fromJson(Map<String, dynamic> json) =
      _$_EvolutionChainInfo.fromJson;

  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$EvolutionChainInfoCopyWith<_EvolutionChainInfo> get copyWith;
}
