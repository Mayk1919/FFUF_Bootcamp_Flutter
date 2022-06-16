// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_sprites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonSprites _$_$_PokemonSpritesFromJson(Map<String, dynamic> json) {
  return _$_PokemonSprites(
    frontDefaultImageUrl: json['front_default'] as String,
    otherSprites: json['other'] == null
        ? null
        : OtherSprites.fromJson(json['other'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonSpritesToJson(_$_PokemonSprites instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefaultImageUrl,
      'other': instance.otherSprites,
    };
