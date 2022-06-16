import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_info.freezed.dart';

part 'stat_info.g.dart';

@freezed
abstract class StatInfo with _$StatInfo {
  factory StatInfo({
    @required @JsonKey(name: 'name') String name,
    @required @JsonKey(name: 'url') String detailsUrl,
  }) = _StatInfo;

  factory StatInfo.fromJson(Map<String, dynamic> json) =>
      _$StatInfoFromJson(json);
}
