import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_freezed.freezed.dart';
part 'review_freezed.g.dart';

@Freezed()
class Review with _$Review {
  factory Review({
    required double score,
    String? review,
  }) = _Review;

factory Review.fromJson (Map<String,dynamic> json)=>
_$ReviewFromJson(json);



}
