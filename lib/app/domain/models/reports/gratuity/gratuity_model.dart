import 'package:freezed_annotation/freezed_annotation.dart';

part 'gratuity_model.freezed.dart';
part 'gratuity_model.g.dart';

@freezed
class GratuityModel with _$GratuityModel {
  factory GratuityModel(
      {required int id,
      required String timeString,
      required String shiftDateString,
      required double totalGratuity,
      required String employee}) = _GratuityModel;

  factory GratuityModel.fromJson(Map<String, dynamic> json) =>
      _$GratuityModelFromJson(json);
}
