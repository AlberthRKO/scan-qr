// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      id: (json['id'] as num).toInt(),
      discountNote: json['discountNote'] as String,
      timeString: json['timeString'] as String,
      shiftDateString: json['shiftDateString'] as String,
      totalDiscount: (json['totalDiscount'] as num).toDouble(),
      employee: json['employee'] as String,
      statusType: (json['statusType'] as num).toInt(),
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discountNote': instance.discountNote,
      'timeString': instance.timeString,
      'shiftDateString': instance.shiftDateString,
      'totalDiscount': instance.totalDiscount,
      'employee': instance.employee,
      'statusType': instance.statusType,
    };
