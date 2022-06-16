import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'official_artwork.freezed.dart';

part 'official_artwork.g.dart';

@freezed
abstract class OfficialArtwork with _$OfficialArtwork {
  factory OfficialArtwork({@JsonKey(name: 'front_default') String imageUrl}) =
      _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}
