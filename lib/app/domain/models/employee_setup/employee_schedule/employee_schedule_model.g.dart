// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeScheduleModelImpl _$$EmployeeScheduleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeScheduleModelImpl(
      employeeid: (json['employeeid'] as num?)?.toInt(),
      startminute: (json['startminute'] as num?)?.toInt(),
      endminute: (json['endminute'] as num?)?.toInt(),
      starthouR2: (json['starthouR2'] as num?)?.toInt(),
      endhour: (json['endhour'] as num?)?.toInt(),
      endhouR2: (json['endhouR2'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      active: json['active'] as bool?,
      starthour: (json['starthour'] as num?)?.toInt(),
      day: (json['day'] as num?)?.toInt(),
      endminutE2: (json['endminutE2'] as num?)?.toInt(),
      startminutE2: (json['startminutE2'] as num?)?.toInt(),
      name: json['name'] as String?,
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EmployeeScheduleModelImplToJson(
        _$EmployeeScheduleModelImpl instance) =>
    <String, dynamic>{
      'employeeid': instance.employeeid,
      'startminute': instance.startminute,
      'endminute': instance.endminute,
      'starthouR2': instance.starthouR2,
      'endhour': instance.endhour,
      'endhouR2': instance.endhouR2,
      'id': instance.id,
      'active': instance.active,
      'starthour': instance.starthour,
      'day': instance.day,
      'endminutE2': instance.endminutE2,
      'startminutE2': instance.startminutE2,
      'name': instance.name,
      'employee': instance.employee,
    };
