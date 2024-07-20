// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      profileId: (json['profileId'] as num).toInt(),
      statusIdc: (json['statusIdc'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profileId': instance.profileId,
      'statusIdc': instance.statusIdc,
      'name': instance.name,
      'email': instance.email,
      'login': instance.login,
      'password': instance.password,
    };
