// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'computer_station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComputerStationModelImpl _$$ComputerStationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ComputerStationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      ip: json['ip'] as String?,
      isserver: json['isserver'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ComputerStationModelImplToJson(
        _$ComputerStationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ip': instance.ip,
      'isserver': instance.isserver,
      'status': instance.status,
    };
