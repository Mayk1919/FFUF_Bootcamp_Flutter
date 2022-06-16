import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_info.freezed.dart';

part 'move_info.g.dart';

@freezed
abstract class MoveInfo with _$MoveInfo {
  factory MoveInfo({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'url') String detailsUrl,
  }) = _MoveInfo;

  factory MoveInfo.fromJson(Map<String, dynamic> json) =>
      _$MoveInfoFromJson(json);
}
