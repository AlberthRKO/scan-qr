import 'package:freezed_annotation/freezed_annotation.dart';

// con codigo generado indicamos el part

part 'access_state.freezed.dart';

// Freezed trabaja con mixis

@freezed
class AccessState with _$AccessState {
  // en freezed se define las propiedades en el constructor
  const factory AccessState({
    @Default('') String pin,
    @Default(false) bool fetching,
  }) = _AccessState;
}
