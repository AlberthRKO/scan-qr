import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card_model.freezed.dart';
part 'credit_card_model.g.dart';

@freezed
class CreditCardModel with _$CreditCardModel {
  factory CreditCardModel({
    int? id,
    String? datestring,
    String? timestring,
    int? dayid,
    double? purchaseamount,
    double? authorizeamount,
    String? type,
    String? customername,
    String? computername,
    double? gratuity,
    String? acctno,
    String? authcode,
    String? expdate,
    String? cardtype,
    String? textresponse,
  }) = _CreditCardModel;

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);
}
