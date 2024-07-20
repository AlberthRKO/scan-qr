import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_profile_model.freezed.dart';
part 'access_profile_model.g.dart';

@freezed
class AccessProfileModel with _$AccessProfileModel {
  factory AccessProfileModel({
    int? id,
    String? name,
    String? nameRelation,
  }) = _AccessProfileModel;

  factory AccessProfileModel.fromJson(Map<String, dynamic> json) =>
      _$AccessProfileModelFromJson(json);
}
