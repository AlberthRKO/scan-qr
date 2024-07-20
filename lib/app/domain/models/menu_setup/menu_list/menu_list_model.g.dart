// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuListModelImpl _$$MenuListModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuListModelImpl(
      id: (json['id'] as num?)?.toInt(),
      restaurantid: json['restaurantid'] as String?,
      menuname: json['menuname'] as String?,
      description: json['description'] as String?,
      active: json['active'] as bool?,
      carryout: json['carryout'] as String?,
      displaysequence: (json['displaysequence'] as num?)?.toInt(),
      csize: (json['csize'] as num?)?.toInt(),
      special: json['special'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MenuListModelImplToJson(_$MenuListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurantid': instance.restaurantid,
      'menuname': instance.menuname,
      'description': instance.description,
      'active': instance.active,
      'carryout': instance.carryout,
      'displaysequence': instance.displaysequence,
      'csize': instance.csize,
      'special': instance.special,
      'status': instance.status,
    };
