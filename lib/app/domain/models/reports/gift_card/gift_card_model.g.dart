// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftCardModelImpl _$$GiftCardModelImplFromJson(Map<String, dynamic> json) =>
    _$GiftCardModelImpl(
      id: (json['id'] as num).toInt(),
      dateString: json['dateString'] as String,
      orderId: (json['orderId'] as num).toInt(),
      track: json['track'] as String,
      currentBalance: (json['currentBalance'] as num).toDouble(),
      statusType: (json['statusType'] as num).toInt(),
    );

Map<String, dynamic> _$$GiftCardModelImplToJson(_$GiftCardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateString': instance.dateString,
      'orderId': instance.orderId,
      'track': instance.track,
      'currentBalance': instance.currentBalance,
      'statusType': instance.statusType,
    };
