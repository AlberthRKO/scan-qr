// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_lock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableLockModelImpl _$$TableLockModelImplFromJson(Map<String, dynamic> json) =>
    _$TableLockModelImpl(
      id: (json['id'] as num?)?.toInt(),
      tableName: json['tableName'] as String?,
    );

Map<String, dynamic> _$$TableLockModelImplToJson(
        _$TableLockModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tableName': instance.tableName,
    };
