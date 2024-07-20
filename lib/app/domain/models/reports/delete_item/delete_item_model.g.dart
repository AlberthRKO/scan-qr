// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteItemModelImpl _$$DeleteItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteItemModelImpl(
      id: (json['id'] as num).toInt(),
      employeename: json['employeename'] as String,
      note: json['note'] as String,
      unitprice: (json['unitprice'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      orderid: (json['orderid'] as num).toInt(),
      employeeid: (json['employeeid'] as num).toInt(),
      type: json['type'] as String,
      content: json['content'] as String,
      tablename: json['tablename'] as String,
      itemname: json['itemname'] as String,
      timestring: json['timestring'] as String,
      shiftdatestring: json['shiftdatestring'] as String,
      dayid: (json['dayid'] as num).toInt(),
    );

Map<String, dynamic> _$$DeleteItemModelImplToJson(
        _$DeleteItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeename': instance.employeename,
      'note': instance.note,
      'unitprice': instance.unitprice,
      'amount': instance.amount,
      'quantity': instance.quantity,
      'orderid': instance.orderid,
      'employeeid': instance.employeeid,
      'type': instance.type,
      'content': instance.content,
      'tablename': instance.tablename,
      'itemname': instance.itemname,
      'timestring': instance.timestring,
      'shiftdatestring': instance.shiftdatestring,
      'dayid': instance.dayid,
    };
