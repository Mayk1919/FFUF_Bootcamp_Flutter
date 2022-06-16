import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_info.freezed.dart';

part 'species_info.g.dart';

@freezed
abstract class SpeciesInfo with _$SpeciesInfo {
  factory SpeciesInfo({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'url') String detailsUrl,
  }) = _SpeciesInfo;

  factory SpeciesInfo.fromJson(Map<String, dynamic> json) =>
      _$SpeciesInfoFromJson(json);
}
