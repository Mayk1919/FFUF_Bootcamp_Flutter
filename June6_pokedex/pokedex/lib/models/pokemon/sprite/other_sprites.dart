import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/models/pokemon/sprite/official_artwork.dart';

part 'other_sprites.freezed.dart';

part 'other_sprites.g.dart';

@freezed
abstract class OtherSprites with _$OtherSprites {
  factory OtherSprites(
      {@JsonKey(name: 'official-artwork')
          OfficialArtwork officialArtwork}) = _OtherSprites;

  factory OtherSprites.fromJson(Map<String, dynamic> json) =>
      _$OtherSpritesFromJson(json);
}
