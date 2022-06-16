// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'flavor_text_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlavorTextEntry _$FlavorTextEntryFromJson(Map<String, dynamic> json) {
  return _FlavorTextEntry.fromJson(json);
}

/// @nodoc
class _$FlavorTextEntryTearOff {
  const _$FlavorTextEntryTearOff();

// ignore: unused_element
  _FlavorTextEntry call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      @JsonKey(name: 'language') LanguageInfo languageInfo}) {
    return _FlavorTextEntry(
      flavorText: flavorText,
      languageInfo: languageInfo,
    );
  }

// ignore: unused_element
  FlavorTextEntry fromJson(Map<String, Object> json) {
    return FlavorTextEntry.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FlavorTextEntry = _$FlavorTextEntryTearOff();

/// @nodoc
mixin _$FlavorTextEntry {
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  @JsonKey(name: 'language')
  LanguageInfo get languageInfo;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FlavorTextEntryCopyWith<FlavorTextEntry> get copyWith;
}

/// @nodoc
abstract class $FlavorTextEntryCopyWith<$Res> {
  factory $FlavorTextEntryCopyWith(
          FlavorTextEntry value, $Res Function(FlavorTextEntry) then) =
      _$FlavorTextEntryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      @JsonKey(name: 'language') LanguageInfo languageInfo});

  $LanguageInfoCopyWith<$Res> get languageInfo;
}

/// @nodoc
class _$FlavorTextEntryCopyWithImpl<$Res>
    implements $FlavorTextEntryCopyWith<$Res> {
  _$FlavorTextEntryCopyWithImpl(this._value, this._then);

  final FlavorTextEntry _value;
  // ignore: unused_field
  final $Res Function(FlavorTextEntry) _then;

  @override
  $Res call({
    Object flavorText = freezed,
    Object languageInfo = freezed,
  }) {
    return _then(_value.copyWith(
      flavorText:
          flavorText == freezed ? _value.flavorText : flavorText as String,
      languageInfo: languageInfo == freezed
          ? _value.languageInfo
          : languageInfo as LanguageInfo,
    ));
  }

  @override
  $LanguageInfoCopyWith<$Res> get languageInfo {
    if (_value.languageInfo == null) {
      return null;
    }
    return $LanguageInfoCopyWith<$Res>(_value.languageInfo, (value) {
      return _then(_value.copyWith(languageInfo: value));
    });
  }
}

/// @nodoc
abstract class _$FlavorTextEntryCopyWith<$Res>
    implements $FlavorTextEntryCopyWith<$Res> {
  factory _$FlavorTextEntryCopyWith(
          _FlavorTextEntry value, $Res Function(_FlavorTextEntry) then) =
      __$FlavorTextEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      @JsonKey(name: 'language') LanguageInfo languageInfo});

  @override
  $LanguageInfoCopyWith<$Res> get languageInfo;
}

/// @nodoc
class __$FlavorTextEntryCopyWithImpl<$Res>
    extends _$FlavorTextEntryCopyWithImpl<$Res>
    implements _$FlavorTextEntryCopyWith<$Res> {
  __$FlavorTextEntryCopyWithImpl(
      _FlavorTextEntry _value, $Res Function(_FlavorTextEntry) _then)
      : super(_value, (v) => _then(v as _FlavorTextEntry));

  @override
  _FlavorTextEntry get _value => super._value as _FlavorTextEntry;

  @override
  $Res call({
    Object flavorText = freezed,
    Object languageInfo = freezed,
  }) {
    return _then(_FlavorTextEntry(
      flavorText:
          flavorText == freezed ? _value.flavorText : flavorText as String,
      languageInfo: languageInfo == freezed
          ? _value.languageInfo
          : languageInfo as LanguageInfo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FlavorTextEntry implements _FlavorTextEntry {
  _$_FlavorTextEntry(
      {@JsonKey(name: 'flavor_text') this.flavorText,
      @JsonKey(name: 'language') this.languageInfo});

  factory _$_FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$_$_FlavorTextEntryFromJson(json);

  @override
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  @override
  @JsonKey(name: 'language')
  final LanguageInfo languageInfo;

  @override
  String toString() {
    return 'FlavorTextEntry(flavorText: $flavorText, languageInfo: $languageInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlavorTextEntry &&
            (identical(other.flavorText, flavorText) ||
                const DeepCollectionEquality()
                    .equals(other.flavorText, flavorText)) &&
            (identical(other.languageInfo, languageInfo) ||
                const DeepCollectionEquality()
                    .equals(other.languageInfo, languageInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flavorText) ^
      const DeepCollectionEquality().hash(languageInfo);

  @JsonKey(ignore: true)
  @override
  _$FlavorTextEntryCopyWith<_FlavorTextEntry> get copyWith =>
      __$FlavorTextEntryCopyWithImpl<_FlavorTextEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlavorTextEntryToJson(this);
  }
}

abstract class _FlavorTextEntry implements FlavorTextEntry {
  factory _FlavorTextEntry(
          {@JsonKey(name: 'flavor_text') String flavorText,
          @JsonKey(name: 'language') LanguageInfo languageInfo}) =
      _$_FlavorTextEntry;

  factory _FlavorTextEntry.fromJson(Map<String, dynamic> json) =
      _$_FlavorTextEntry.fromJson;

  @override
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  @override
  @JsonKey(name: 'language')
  LanguageInfo get languageInfo;
  @override
  @JsonKey(ignore: true)
  _$FlavorTextEntryCopyWith<_FlavorTextEntry> get copyWith;
}
