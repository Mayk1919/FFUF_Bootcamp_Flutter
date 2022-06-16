import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_info.freezed.dart';

part 'language_info.g.dart';

@freezed
abstract class LanguageInfo with _$LanguageInfo {
  factory LanguageInfo({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'url') String detailsUrl,
  }) = _LanguageInfo;

  factory LanguageInfo.fromJson(Map<String, dynamic> json) =>
      _$LanguageInfoFromJson(json);
}
