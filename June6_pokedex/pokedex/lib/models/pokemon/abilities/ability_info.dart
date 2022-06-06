import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_info.freezed.dart';
part 'ability_info.g.dart';

@freezed
abstract class AbilityInfo with _$AbilityInfo {
  factory AbilityInfo({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'url') String detailUrl,
  }) = _AbilityInfo;

  factory AbilityInfo.fromJson(Map<String, dynamic> json)=>_$AbilityInfoFromJson(json);