import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon/types/type_info.dart';

part 'pokemon_type.freezed.dart';

part 'pokemon_type.g.dart';

@freezed
abstract class PokemonType with _$PokemonType {
  factory PokemonType({
    @JsonKey(name: 'slot') int slot,
    @JsonKey(name: 'type') TypeInfo typeInfo,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}

extension NestedPropertyAccess on PokemonType {
  String get name => typeInfo.name;
}
