// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditCardModelImpl _$$CreditCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreditCardModelImpl(
      id: (json['id'] as num?)?.toInt(),
      datestring: json['datestring'] as String?,
      timestring: json['timestring'] as String?,
      dayid: (json['dayid'] as num?)?.toInt(),
      purchaseamount: (json['purchaseamount'] as num?)?.toDouble(),
      authorizeamount: (json['authorizeamount'] as num?)?.toDouble(),
      type: json['type'] as String?,
      customername: json['customername'] as String?,
      computername: json['computername'] as String?,
      gratuity: (json['gratuity'] as num?)?.toDouble(),
      acctno: json['acctno'] as String?,
      authcode: json['authcode'] as String?,
      expdate: json['expdate'] as String?,
      cardtype: json['cardtype'] as String?,
      textresponse: json['textresponse'] as String?,
    );

Map<String, dynamic> _$$CreditCardModelImplToJson(
        _$CreditCardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datestring': instance.datestring,
      'timestring': instance.timestring,
      'dayid': instance.dayid,
      'purchaseamount': instance.purchaseamount,
      'authorizeamount': instance.authorizeamount,
      'type': instance.type,
      'customername': instance.customername,
      'computername': instance.computername,
      'gratuity': instance.gratuity,
      'acctno': instance.acctno,
      'authcode': instance.authcode,
      'expdate': instance.expdate,
      'cardtype': instance.cardtype,
      'textresponse': instance.textresponse,
    };
