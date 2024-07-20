import 'package:freezed_annotation/freezed_annotation.dart';

part 'super_user_password_model.freezed.dart';
part 'super_user_password_model.g.dart';

@freezed
class SuperUserPasswordModel with _$SuperUserPasswordModel {
  factory SuperUserPasswordModel({
    int? id,
    String? p,
    String? longp,
    int? status,
  }) = _SuperUserPasswordModel;

  factory SuperUserPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$SuperUserPasswordModelFromJson(json);
}
