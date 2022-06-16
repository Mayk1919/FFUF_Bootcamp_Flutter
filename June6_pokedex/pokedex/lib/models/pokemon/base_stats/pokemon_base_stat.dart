import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/models/pokemon/base_stats/stat_info.dart';

part 'pokemon_base_stat.freezed.dart';

part 'pokemon_base_stat.g.dart';

@freezed
abstract class PokemonBaseStat with _$PokemonBaseStat {
  factory PokemonBaseStat({
    @JsonKey(name: 'base_stat') int baseStat,
    @JsonKey(name: 'stat') StatInfo statInfo,
  }) = _PokemonBaseStat;

  factory PokemonBaseStat.fromJson(Map<String, dynamic> json) =>
      _$PokemonBaseStatFromJson(json);
}

extension NestedPropertyAccess on PokemonBaseStat {
  String get name => statInfo.name;
}
