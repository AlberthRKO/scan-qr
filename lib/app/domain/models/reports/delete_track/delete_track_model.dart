import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_track_model.freezed.dart';
part 'delete_track_model.g.dart';

@freezed
class DeleteTrackModel with _$DeleteTrackModel {
  factory DeleteTrackModel({
    required int id,
    required String dateString,
    required String content,
    String? note,
    required double amount,
    required String employee,
    required int status,
    required int statusType,
  }) = _DeleteTrackModel;

  factory DeleteTrackModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteTrackModelFromJson(json);
}
