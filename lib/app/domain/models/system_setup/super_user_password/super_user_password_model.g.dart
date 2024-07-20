// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_user_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuperUserPasswordModelImpl _$$SuperUserPasswordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SuperUserPasswordModelImpl(
      id: (json['id'] as num?)?.toInt(),
      p: json['p'] as String?,
      longp: json['longp'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SuperUserPasswordModelImplToJson(
        _$SuperUserPasswordModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'p': instance.p,
      'longp': instance.longp,
      'status': instance.status,
    };
