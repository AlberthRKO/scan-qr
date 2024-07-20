import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_hours_model.freezed.dart';
part 'shift_hours_model.g.dart';

@freezed
class ShiftHoursModel with _$ShiftHoursModel {
  factory ShiftHoursModel({
    int? id,
    String? dateString,
    String? timeInString,
    String? timeOutString,
    String? breakInString,
    String? breakOutString,
    double? breakTime,
    double? hours,
    String? employee,
    int? hourlyRate,
    double? totalRate,
    int? cashierrate,
    int? waiterrate,
    int? busrate,
    int? managerrate,
    int? hostrate,
    int? driverrate,
    int? cookrate,
    int? bartenderrate,
    int? linerate,
    int? kitchenrate,
    bool? barte,
    int? dishrate,
    int? runnerrate,
  }) = _ShiftHoursModel;

  factory ShiftHoursModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftHoursModelFromJson(json);
}
