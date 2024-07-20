// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requeriment_group_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequerimentGroupModalImpl _$$RequerimentGroupModalImplFromJson(
        Map<String, dynamic> json) =>
    _$RequerimentGroupModalImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      active: json['active'] as bool?,
      fontsize: (json['fontsize'] as num?)?.toInt(),
      internet: json['internet'] as bool?,
    );

Map<String, dynamic> _$$RequerimentGroupModalImplToJson(
        _$RequerimentGroupModalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'fontsize': instance.fontsize,
      'internet': instance.internet,
    };
