import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_food_model.freezed.dart';
part 'report_food_model.g.dart';

@freezed
class ReportFoodModel with _$ReportFoodModel {
  factory ReportFoodModel({
    int? dayId,
    String? timeString,
    String? type,
    String? creditType,
    String? creditCardNumber,
    String? waiter,
    double? total,
    double? gratuity,
    String? approvalCode,
  }) = _ReportFoodModel;

  factory ReportFoodModel.fromJson(Map<String, dynamic> json) =>
      _$ReportFoodModelFromJson(json);
}
