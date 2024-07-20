import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_save_model.freezed.dart';
part 'user_save_model.g.dart';

@freezed
class UserSaveModel with _$UserSaveModel {
  factory UserSaveModel({
    String? usuario,
    String? password,
  }) = _UserSaveModel;

  factory UserSaveModel.fromJson(Map<String, dynamic> json) =>
      _$UserSaveModelFromJson(json);
}
