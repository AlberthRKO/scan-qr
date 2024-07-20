// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryMenuImpl _$$CategoryMenuImplFromJson(Map<String, dynamic> json) =>
    _$CategoryMenuImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      fontSize: (json['fontSize'] as num?)?.toInt(),
      description: json['description'] as String?,
      usesTandardTax: json['usesTandardTax'] as String?,
      taxtRate: json['taxtRate'] as String?,
      active: json['active'] as bool?,
      invisible: json['invisible'] as bool?,
      printReceIpt: json['printReceIpt'] as bool?,
      printKitChen: json['printKitChen'] as bool?,
      printKitChen2: json['printKitChen2'] as bool?,
      printKitChen4: json['printKitChen4'] as bool?,
      internet: json['internet'] as bool?,
      selftOrder: json['selftOrder'] as bool?,
    );

Map<String, dynamic> _$$CategoryMenuImplToJson(_$CategoryMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'fontSize': instance.fontSize,
      'description': instance.description,
      'usesTandardTax': instance.usesTandardTax,
      'taxtRate': instance.taxtRate,
      'active': instance.active,
      'invisible': instance.invisible,
      'printReceIpt': instance.printReceIpt,
      'printKitChen': instance.printKitChen,
      'printKitChen2': instance.printKitChen2,
      'printKitChen4': instance.printKitChen4,
      'internet': instance.internet,
      'selftOrder': instance.selftOrder,
    };
