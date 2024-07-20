// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_setup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantSetupModelImpl _$$RestaurantSetupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantSetupModelImpl(
      id: (json['id'] as num?)?.toInt(),
      statusIdc: (json['statusIdc'] as num?)?.toInt(),
      systemName: json['systemName'] as String?,
      ip: json['ip'] as String?,
      port: json['port'] as String?,
      database: json['database'] as String?,
      user: json['user'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      defaultEmployeeCode: (json['defaultEmployeeCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RestaurantSetupModelImplToJson(
        _$RestaurantSetupModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statusIdc': instance.statusIdc,
      'systemName': instance.systemName,
      'ip': instance.ip,
      'port': instance.port,
      'database': instance.database,
      'user': instance.user,
      'password': instance.password,
      'email': instance.email,
      'defaultEmployeeCode': instance.defaultEmployeeCode,
    };
