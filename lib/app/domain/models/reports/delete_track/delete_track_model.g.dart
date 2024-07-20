// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_track_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteTrackModelImpl _$$DeleteTrackModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteTrackModelImpl(
      id: (json['id'] as num).toInt(),
      dateString: json['dateString'] as String,
      content: json['content'] as String,
      note: json['note'] as String?,
      amount: (json['amount'] as num).toDouble(),
      employee: json['employee'] as String,
      status: (json['status'] as num).toInt(),
      statusType: (json['statusType'] as num).toInt(),
    );

Map<String, dynamic> _$$DeleteTrackModelImplToJson(
        _$DeleteTrackModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateString': instance.dateString,
      'content': instance.content,
      'note': instance.note,
      'amount': instance.amount,
      'employee': instance.employee,
      'status': instance.status,
      'statusType': instance.statusType,
    };
