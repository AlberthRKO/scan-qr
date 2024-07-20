// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requeriment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequerimentModelImpl _$$RequerimentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequerimentModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      price1: (json['price1'] as num?)?.toDouble(),
      price2: (json['price2'] as num?)?.toDouble(),
      price3: (json['price3'] as num?)?.toDouble(),
      requirementGroupId: (json['requirementGroupId'] as num?)?.toInt(),
      restaurantId: (json['restaurantId'] as num?)?.toInt(),
      requirementGroup: json['requirementGroup'] as String?,
      shortname: json['shortname'] as String?,
      fontsize: (json['fontsize'] as num?)?.toInt(),
      active: json['active'] as bool?,
      internet: json['internet'] as bool?,
      printreceipt: json['printreceipt'] as bool?,
      printkitchen: json['printkitchen'] as bool?,
      printkitcheN2: json['printkitcheN2'] as bool?,
      printkitcheN3: json['printkitcheN3'] as bool?,
      printkitcheN4: json['printkitcheN4'] as bool?,
      printkitcheN5: json['printkitcheN5'] as bool?,
      printkitcheN6: json['printkitcheN6'] as bool?,
    );

Map<String, dynamic> _$$RequerimentModelImplToJson(
        _$RequerimentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'price1': instance.price1,
      'price2': instance.price2,
      'price3': instance.price3,
      'requirementGroupId': instance.requirementGroupId,
      'restaurantId': instance.restaurantId,
      'requirementGroup': instance.requirementGroup,
      'shortname': instance.shortname,
      'fontsize': instance.fontsize,
      'active': instance.active,
      'internet': instance.internet,
      'printreceipt': instance.printreceipt,
      'printkitchen': instance.printkitchen,
      'printkitcheN2': instance.printkitcheN2,
      'printkitcheN3': instance.printkitcheN3,
      'printkitcheN4': instance.printkitcheN4,
      'printkitcheN5': instance.printkitcheN5,
      'printkitcheN6': instance.printkitcheN6,
    };
