import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_property_model.freezed.dart';
part 'global_property_model.g.dart';

@freezed
class GlobalPropertyModel with _$GlobalPropertyModel {
  factory GlobalPropertyModel({
    int? id,
    String? value,
    String? key,
    int? status,
  }) = _GlobalPropertyModel;

  factory GlobalPropertyModel.fromJson(Map<String, dynamic> json) =>
      _$GlobalPropertyModelFromJson(json);
}
