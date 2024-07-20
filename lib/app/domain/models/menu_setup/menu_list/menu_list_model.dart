import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_list_model.freezed.dart';
part 'menu_list_model.g.dart';

@freezed
class MenuListModel with _$MenuListModel {
  factory MenuListModel({
    int? id,
    String? restaurantid,
    String? menuname,
    String? description,
    bool? active,
    String? carryout,
    int? displaysequence,
    int? csize,
    String? special,
    int? status,
  }) = _MenuListModel;

  factory MenuListModel.fromJson(Map<String, dynamic> json) =>
      _$MenuListModelFromJson(json);
}
