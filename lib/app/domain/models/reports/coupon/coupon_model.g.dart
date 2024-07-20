// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponModelImpl _$$CouponModelImplFromJson(Map<String, dynamic> json) =>
    _$CouponModelImpl(
      id: (json['id'] as num).toInt(),
      expirationDate: json['expirationDate'] as String,
      name: json['name'] as String,
      couponCode: json['couponCode'] as String?,
      amount: (json['amount'] as num).toDouble(),
      percent: (json['percent'] as num).toDouble(),
      description: json['description'] as String?,
      conditions: json['conditions'] as String?,
      statusType: (json['statusType'] as num).toInt(),
    );

Map<String, dynamic> _$$CouponModelImplToJson(_$CouponModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expirationDate': instance.expirationDate,
      'name': instance.name,
      'couponCode': instance.couponCode,
      'amount': instance.amount,
      'percent': instance.percent,
      'description': instance.description,
      'conditions': instance.conditions,
      'statusType': instance.statusType,
    };
