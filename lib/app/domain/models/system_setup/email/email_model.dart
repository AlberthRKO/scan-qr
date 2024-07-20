import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_model.freezed.dart';
part 'email_model.g.dart';

@freezed
class EmailModel with _$EmailModel {
  factory EmailModel({
    int? id,
    String? email,
    String? clave,
    String? smtpHost,
    int? smtpPort,
    bool? smtpEncryption,
    int? idSistema,
  }) = _EmailModel;

  factory EmailModel.fromJson(Map<String, dynamic> json) =>
      _$EmailModelFromJson(json);
}
