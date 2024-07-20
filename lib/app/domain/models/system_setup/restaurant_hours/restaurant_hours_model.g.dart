// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_hours_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantHoursModelImpl _$$RestaurantHoursModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantHoursModelImpl(
      id: (json['id'] as num?)?.toInt(),
      restaurantid: (json['restaurantid'] as num?)?.toInt(),
      day: (json['day'] as num?)?.toInt(),
      name: json['name'] as String?,
      starthour: (json['starthour'] as num?)?.toInt(),
      startminute: (json['startminute'] as num?)?.toInt(),
      endhour: (json['endhour'] as num?)?.toInt(),
      endminute: (json['endminute'] as num?)?.toInt(),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$RestaurantHoursModelImplToJson(
        _$RestaurantHoursModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurantid': instance.restaurantid,
      'day': instance.day,
      'name': instance.name,
      'starthour': instance.starthour,
      'startminute': instance.startminute,
      'endhour': instance.endhour,
      'endminute': instance.endminute,
      'active': instance.active,
    };
