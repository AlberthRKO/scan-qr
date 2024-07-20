// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportFoodModelImpl _$$ReportFoodModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportFoodModelImpl(
      dayId: (json['dayId'] as num?)?.toInt(),
      timeString: json['timeString'] as String?,
      type: json['type'] as String?,
      creditType: json['creditType'] as String?,
      creditCardNumber: json['creditCardNumber'] as String?,
      waiter: json['waiter'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      gratuity: (json['gratuity'] as num?)?.toDouble(),
      approvalCode: json['approvalCode'] as String?,
    );

Map<String, dynamic> _$$ReportFoodModelImplToJson(
        _$ReportFoodModelImpl instance) =>
    <String, dynamic>{
      'dayId': instance.dayId,
      'timeString': instance.timeString,
      'type': instance.type,
      'creditType': instance.creditType,
      'creditCardNumber': instance.creditCardNumber,
      'waiter': instance.waiter,
      'total': instance.total,
      'gratuity': instance.gratuity,
      'approvalCode': instance.approvalCode,
    };
