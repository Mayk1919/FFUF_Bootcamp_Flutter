import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(<String>[]) @JsonKey(name: 'names') List<String> names,
  }) = _AppState;

  factory AppState.init() => AppState(names: []);

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
