import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_chain_info.freezed.dart';

part 'evolution_chain_info.g.dart';

@freezed
abstract class EvolutionChainInfo with _$EvolutionChainInfo {
  factory EvolutionChainInfo({@JsonKey(name: 'url') String url}) =
      _EvolutionChainInfo;

  factory EvolutionChainInfo.fromJson(Map<String, dynamic> json) =>
      _$EvolutionChainInfoFromJson(json);
}
