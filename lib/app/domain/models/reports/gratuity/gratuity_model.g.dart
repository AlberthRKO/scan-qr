// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gratuity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GratuityModelImpl _$$GratuityModelImplFromJson(Map<String, dynamic> json) =>
    _$GratuityModelImpl(
      id: (json['id'] as num).toInt(),
      timeString: json['timeString'] as String,
      shiftDateString: json['shiftDateString'] as String,
      totalGratuity: (json['totalGratuity'] as num).toDouble(),
      employee: json['employee'] as String,
    );

Map<String, dynamic> _$$GratuityModelImplToJson(_$GratuityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timeString': instance.timeString,
      'shiftDateString': instance.shiftDateString,
      'totalGratuity': instance.totalGratuity,
      'employee': instance.employee,
    };
