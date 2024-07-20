import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_lock_model.freezed.dart';
part 'table_lock_model.g.dart';

@freezed
class TableLockModel with _$TableLockModel {
  factory TableLockModel({
    int? id,
    String? tableName,
  }) = _TableLockModel;

  factory TableLockModel.fromJson(Map<String, dynamic> json) =>
      _$TableLockModelFromJson(json);
}
