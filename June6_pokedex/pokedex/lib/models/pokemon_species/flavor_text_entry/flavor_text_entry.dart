import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'language_info.dart';

part 'flavor_text_entry.freezed.dart';

part 'flavor_text_entry.g.dart';

@freezed
abstract class FlavorTextEntry with _$FlavorTextEntry {
  factory FlavorTextEntry({
    @JsonKey(name: 'flavor_text') String flavorText,
    @JsonKey(name: 'language') LanguageInfo languageInfo,
  }) = _FlavorTextEntry;

  factory FlavorTextEntry.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryFromJson(json);
}
