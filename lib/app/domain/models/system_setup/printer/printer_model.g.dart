// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrinterModelImpl _$$PrinterModelImplFromJson(Map<String, dynamic> json) =>
    _$PrinterModelImpl(
      port: json['port'] as String?,
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      ip: json['ip'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PrinterModelImplToJson(_$PrinterModelImpl instance) =>
    <String, dynamic>{
      'port': instance.port,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'ip': instance.ip,
      'status': instance.status,
    };
