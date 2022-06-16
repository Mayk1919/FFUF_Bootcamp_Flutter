import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'type_info.freezed.dart';

part 'type_info.g.dart';

@freezed
abstract class TypeInfo with _$TypeInfo {
  factory TypeInfo({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'url') String detailsUrl,
  }) = _TypeInfo;

  factory TypeInfo.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoFromJson(json);
}
