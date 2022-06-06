import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:may31/models/review_freezed.dart';

part 'restaurant_freezed.freezed.dart';
part 'restaurant_freezed.g.dart';

@Freezed()

class Restaurant with _$Restaurant {
  factory Restaurant({
    required String name,
    required String cuisine,

    @JsonKey(name: 'year_opened' ) int ? yearOpened,
    @Default([]) List<Review> reviews,

  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String,dynamic>json) => _$RestaurantFromJson(json);

  
}