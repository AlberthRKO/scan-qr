// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_hours_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShiftHoursModelImpl _$$ShiftHoursModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShiftHoursModelImpl(
      id: (json['id'] as num?)?.toInt(),
      dateString: json['dateString'] as String?,
      timeInString: json['timeInString'] as String?,
      timeOutString: json['timeOutString'] as String?,
      breakInString: json['breakInString'] as String?,
      breakOutString: json['breakOutString'] as String?,
      breakTime: (json['breakTime'] as num?)?.toDouble(),
      hours: (json['hours'] as num?)?.toDouble(),
      employee: json['employee'] as String?,
      hourlyRate: (json['hourlyRate'] as num?)?.toInt(),
      totalRate: (json['totalRate'] as num?)?.toDouble(),
      cashierrate: (json['cashierrate'] as num?)?.toInt(),
      waiterrate: (json['waiterrate'] as num?)?.toInt(),
      busrate: (json['busrate'] as num?)?.toInt(),
      managerrate: (json['managerrate'] as num?)?.toInt(),
      hostrate: (json['hostrate'] as num?)?.toInt(),
      driverrate: (json['driverrate'] as num?)?.toInt(),
      cookrate: (json['cookrate'] as num?)?.toInt(),
      bartenderrate: (json['bartenderrate'] as num?)?.toInt(),
      linerate: (json['linerate'] as num?)?.toInt(),
      kitchenrate: (json['kitchenrate'] as num?)?.toInt(),
      barte: json['barte'] as bool?,
      dishrate: (json['dishrate'] as num?)?.toInt(),
      runnerrate: (json['runnerrate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ShiftHoursModelImplToJson(
        _$ShiftHoursModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateString': instance.dateString,
      'timeInString': instance.timeInString,
      'timeOutString': instance.timeOutString,
      'breakInString': instance.breakInString,
      'breakOutString': instance.breakOutString,
      'breakTime': instance.breakTime,
      'hours': instance.hours,
      'employee': instance.employee,
      'hourlyRate': instance.hourlyRate,
      'totalRate': instance.totalRate,
      'cashierrate': instance.cashierrate,
      'waiterrate': instance.waiterrate,
      'busrate': instance.busrate,
      'managerrate': instance.managerrate,
      'hostrate': instance.hostrate,
      'driverrate': instance.driverrate,
      'cookrate': instance.cookrate,
      'bartenderrate': instance.bartenderrate,
      'linerate': instance.linerate,
      'kitchenrate': instance.kitchenrate,
      'barte': instance.barte,
      'dishrate': instance.dishrate,
      'runnerrate': instance.runnerrate,
    };
