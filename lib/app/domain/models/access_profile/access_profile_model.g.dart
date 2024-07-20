// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessProfileModelImpl _$$AccessProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccessProfileModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameRelation: json['nameRelation'] as String?,
    );

Map<String, dynamic> _$$AccessProfileModelImplToJson(
        _$AccessProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameRelation': instance.nameRelation,
    };
