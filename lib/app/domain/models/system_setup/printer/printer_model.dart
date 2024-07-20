import 'package:freezed_annotation/freezed_annotation.dart';

part 'printer_model.freezed.dart';
part 'printer_model.g.dart';

@freezed
class PrinterModel with _$PrinterModel {
  factory PrinterModel({
    String? port,
    int? id,
    String? name,
    String? type,
    String? ip,
    int? status,
  }) = _PrinterModel;

  factory PrinterModel.fromJson(Map<String, dynamic> json) =>
      _$PrinterModelFromJson(json);
}
