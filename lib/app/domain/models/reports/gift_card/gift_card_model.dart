import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_card_model.freezed.dart';
part 'gift_card_model.g.dart';

@freezed
class GiftCardModel with _$GiftCardModel {
  factory GiftCardModel({
    required int id,
    required String dateString,
    required int orderId,
    required String track,
    required double currentBalance,
    required int statusType,
  }) = _GiftCardModel;

  factory GiftCardModel.fromJson(Map<String, dynamic> json) =>
      _$GiftCardModelFromJson(json);
}
