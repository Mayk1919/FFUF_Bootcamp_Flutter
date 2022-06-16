import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/models/pokemon/species/species_info.dart';

part 'evolves_to.freezed.dart';

part 'evolves_to.g.dart';

@freezed
abstract class EvolvesTo with _$EvolvesTo {
  factory EvolvesTo({
    @JsonKey(name: 'species') SpeciesInfo speciesInfo,
    @JsonKey(name: 'evolves_to') List<EvolvesTo> evolutions,
  }) = _EvolvesTo;

  factory EvolvesTo.fromJson(Map<String, dynamic> json) =>
      _$EvolvesToFromJson(json);
}

extension NestedPropertyAccess on EvolvesTo {
  String get speciesName => speciesInfo.name;
}
