import 'package:freezed_annotation/freezed_annotation.dart';

// con codigo generado indicamos el part

part 'login_state.freezed.dart';

// Freezed trabaja con mixis

@freezed
class LoginState with _$LoginState {
  // en freezed se define las propiedades en el constructor
  const factory LoginState({
    @Default('') String username,
    @Default('') String password,
    @Default('') String ipServer,
    @Default(false) bool fetching,
  }) = _LoginState;
}
