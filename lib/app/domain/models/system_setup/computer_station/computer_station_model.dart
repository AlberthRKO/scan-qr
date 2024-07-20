import 'package:freezed_annotation/freezed_annotation.dart';

part 'computer_station_model.freezed.dart';
part 'computer_station_model.g.dart';

@freezed
class ComputerStationModel with _$ComputerStationModel {
  factory ComputerStationModel({
    int? id,
    String? ip,
    String? isserver,
    int? status,
  }) = _ComputerStationModel;

  factory ComputerStationModel.fromJson(Map<String, dynamic> json) =>
      _$ComputerStationModelFromJson(json);
}
