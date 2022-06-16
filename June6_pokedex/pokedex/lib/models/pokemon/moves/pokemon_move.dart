import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon/moves/move_info.dart';

part 'pokemon_move.freezed.dart';

part 'pokemon_move.g.dart';

@freezed
abstract class PokemonMove with _$PokemonMove {
  factory PokemonMove({@JsonKey(name: 'move') MoveInfo moveInfo}) =
      _PokemonMove;

  factory PokemonMove.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveFromJson(json);
}

extension NestedPropertyAccess on PokemonMove {
  String get name => moveInfo.name;
}
