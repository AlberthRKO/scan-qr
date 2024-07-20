import 'package:freezed_annotation/freezed_annotation.dart';

part 'requeriment_model.freezed.dart';
part 'requeriment_model.g.dart';

@freezed
class RequerimentModel with _$RequerimentModel {
  factory RequerimentModel({
    int? id,
    String? name,
    double? price,
    double? price1,
    double? price2,
    double? price3,
    int? requirementGroupId,
    int? restaurantId,
    String? requirementGroup,
    String? shortname,
    int? fontsize,
    bool? active,
    bool? internet,
    bool? printreceipt,
    bool? printkitchen,
    bool? printkitcheN2,
    bool? printkitcheN3,
    bool? printkitcheN4,
    bool? printkitcheN5,
    bool? printkitcheN6,
  }) = _RequerimentModel;

  factory RequerimentModel.fromJson(Map<String, dynamic> json) =>
      _$RequerimentModelFromJson(json);
}
