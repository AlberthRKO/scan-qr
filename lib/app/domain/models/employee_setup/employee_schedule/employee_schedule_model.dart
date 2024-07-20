import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';

part 'employee_schedule_model.freezed.dart';
part 'employee_schedule_model.g.dart';

@freezed
class EmployeeScheduleModel with _$EmployeeScheduleModel {
  factory EmployeeScheduleModel({
    int? employeeid,
    int? startminute,
    int? endminute,
    int? starthouR2,
    int? endhour,
    int? endhouR2,
    int? id,
    bool? active,
    int? starthour,
    int? day,
    int? endminutE2,
    int? startminutE2,
    String? name,
    Employee? employee,
  }) = _EmployeeScheduleModel;

  factory EmployeeScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeScheduleModelFromJson(json);
}
