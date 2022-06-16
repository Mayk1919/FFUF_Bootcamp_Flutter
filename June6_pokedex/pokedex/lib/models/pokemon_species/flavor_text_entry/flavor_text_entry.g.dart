// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor_text_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlavorTextEntry _$_$_FlavorTextEntryFromJson(Map<String, dynamic> json) {
  return _$_FlavorTextEntry(
    flavorText: json['flavor_text'] as String,
    languageInfo: json['language'] == null
        ? null
        : LanguageInfo.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FlavorTextEntryToJson(_$_FlavorTextEntry instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.languageInfo,
    };
