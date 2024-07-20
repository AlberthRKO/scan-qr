// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailModelImpl _$$EmailModelImplFromJson(Map<String, dynamic> json) =>
    _$EmailModelImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      clave: json['clave'] as String?,
      smtpHost: json['smtpHost'] as String?,
      smtpPort: (json['smtpPort'] as num?)?.toInt(),
      smtpEncryption: json['smtpEncryption'] as bool?,
      idSistema: (json['idSistema'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EmailModelImplToJson(_$EmailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'clave': instance.clave,
      'smtpHost': instance.smtpHost,
      'smtpPort': instance.smtpPort,
      'smtpEncryption': instance.smtpEncryption,
      'idSistema': instance.idSistema,
    };
