import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_setup_model.freezed.dart';
part 'restaurant_setup_model.g.dart';

@freezed
class RestaurantSetupModel with _$RestaurantSetupModel {
  factory RestaurantSetupModel({
    int? id,
    int? statusIdc,
    String? systemName,
    String? ip,
    String? port,
    String? database,
    String? user,
    String? password,
    String? email,
    int? defaultEmployeeCode,
  }) = _RestaurantSetupModel;

  factory RestaurantSetupModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantSetupModelFromJson(json);
}
