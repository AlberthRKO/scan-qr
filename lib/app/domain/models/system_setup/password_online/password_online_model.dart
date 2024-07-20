import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_online_model.freezed.dart';
part 'password_online_model.g.dart';

@freezed
class PasswordOnlineModel with _$PasswordOnlineModel {
  factory PasswordOnlineModel({
    int? id,
    String? iP,
  }) = _PasswordOnlineModel;

  factory PasswordOnlineModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordOnlineModelFromJson(json);
}
