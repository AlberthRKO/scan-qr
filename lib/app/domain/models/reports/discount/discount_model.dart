import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  factory DiscountModel({
    required int id,
    required String discountNote,
    required String timeString,
    required String shiftDateString,
    required double totalDiscount,
    required String employee,
    required int statusType,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}
