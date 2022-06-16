import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/models/pokemon/sprite/other_sprites.dart';

part 'pokemon_sprites.freezed.dart';

part 'pokemon_sprites.g.dart';

@freezed
abstract class PokemonSprites with _$PokemonSprites {
  factory PokemonSprites({
    @JsonKey(name: 'front_default') String frontDefaultImageUrl,
    @JsonKey(name: 'other') OtherSprites otherSprites,
  }) = _PokemonSprites;

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);
}
