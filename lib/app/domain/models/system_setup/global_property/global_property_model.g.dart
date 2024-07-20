// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalPropertyModelImpl _$$GlobalPropertyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GlobalPropertyModelImpl(
      id: (json['id'] as num?)?.toInt(),
      value: json['value'] as String?,
      key: json['key'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GlobalPropertyModelImplToJson(
        _$GlobalPropertyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'key': instance.key,
      'status': instance.status,
    };
