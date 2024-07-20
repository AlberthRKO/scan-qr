import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_hours_model.freezed.dart';
part 'restaurant_hours_model.g.dart';

@freezed
class RestaurantHoursModel with _$RestaurantHoursModel {
  factory RestaurantHoursModel({
    int? id,
    int? restaurantid,
    int? day,
    String? name,
    int? starthour,
    int? startminute,
    int? endhour,
    int? endminute,
    bool? active,
  }) = _RestaurantHoursModel;

  factory RestaurantHoursModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantHoursModelFromJson(json);
}
