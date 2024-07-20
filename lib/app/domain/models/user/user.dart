import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_scan/app/domain/typedef.dart';

// indicamos que archivo queremos injectar a l part
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required int profileId,
    required int statusIdc,
    required String name,
    required String email,
    required String login,
    required String password,
  }) = _User;

  // funciones aparte creadas
  const User._();

  String getFormatted() {
    return '$id $profileId $statusIdc $name $email $login $password';
  }

  // Si se trabaja con freezed el tojson ya lo hace siempre y cuando este el fromJson
  // Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.fromJson(Json json) => _$UserFromJson(json);
}
