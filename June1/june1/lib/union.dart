import 'package:freezed_annotation/freezed_annotation.dart';

part 'union.freezed.dart';

@freezed
class Union with _$Union {
  factory Union(int value) = Data;
  factory Union.loading() = Loading;
  factory Union.error([String? message]) = Error;
}


void  main() {
  var union = Union(42);

print(
  union.when(
    (int value) => 'Data $value',
    loading: () => 'loading',
    error: (String? message) => 'Error: $message',
  ),
);
}
