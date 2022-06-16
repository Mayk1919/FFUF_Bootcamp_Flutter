// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolves_to.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EvolvesTo _$_$_EvolvesToFromJson(Map<String, dynamic> json) {
  return _$_EvolvesTo(
    speciesInfo: json['species'] == null
        ? null
        : SpeciesInfo.fromJson(json['species'] as Map<String, dynamic>),
    evolutions: (json['evolves_to'] as List)
        ?.map((e) =>
            e == null ? null : EvolvesTo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_EvolvesToToJson(_$_EvolvesTo instance) =>
    <String, dynamic>{
      'species': instance.speciesInfo,
      'evolves_to': instance.evolutions,
    };
