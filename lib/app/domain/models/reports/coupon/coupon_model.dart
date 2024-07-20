import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_model.freezed.dart';
part 'coupon_model.g.dart';

@freezed
class CouponModel with _$CouponModel {
  factory CouponModel({
    required int id,
    required String expirationDate,
    required String name,
    String? couponCode,
    required double amount,
    required double percent,
    String? description,
    String? conditions,
    required int statusType,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);
}
