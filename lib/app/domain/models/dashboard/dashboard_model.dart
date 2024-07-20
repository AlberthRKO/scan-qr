import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel {
  factory DashboardModel(
    int? id,
    String? dateNow,
    double? total,
    double? tax,
    double? subTotal,
    double? foodTotal,
    double? beerTotal,
    int? wineTotal,
    double? beverageTotal,
    double? liquorTotal,
    int? foodCount,
    int? beerCount,
    int? wineCount,
    int? beverageCount,
    int? liquorCount,
    double? paymentCreditAmex,
    double? paymentCreditDiscover,
    double? paymentCreditVisa,
    double? paymentCreditMastercard,
    int? paymentAccount,
    double? paymentCash,
    double? gratuityCash,
    int? paymentCreditAmexCount,
    int? paymentCreditDiscoverCount,
    int? paymentCreditVisaCount,
    int? paymentCreditMastercardCount,
    int? paymentAccountCount,
    int? paymentCashCount,
    int? gratuityCashCount,
    double? typeDineIn,
    double? typePickUp,
    int? typeDelivery,
    int? typeCarryOut,
    int? typeDineInCount,
    int? typePickUpCount,
    int? typeDeliveryCount,
    int? typeCarryOutCount,
    int? statusPlaced,
    int? statusCanceled,
    int? statusPlacedCount,
    int? statusCanceledCount,
    int? employeeNumber,
    double? employeeHours,
    double? totalDiscount,
    int? openTables,
    double? totalVOID,
    double? totalOnlyOders,
    double? totalTips,
    double? paymentCreditCard,
    double? otherTotal,
    int? otherCount,
    int? tipsFee,
    int? wineBeerTotal,
    int? wineBeerCount,
    String? lastUpdate,
    int? totalOnlyOdersCount,
  ) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}
