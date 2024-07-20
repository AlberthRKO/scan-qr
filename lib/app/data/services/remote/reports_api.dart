import 'package:qr_scan/app/data/http/http.dart';
import 'package:qr_scan/app/data/services/utils/handle_failure.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/reports/coupon/coupon_model.dart';
import 'package:qr_scan/app/domain/models/reports/credit_card/credit_card_model.dart';
import 'package:qr_scan/app/domain/models/reports/delete_item/delete_item_model.dart';
import 'package:qr_scan/app/domain/models/reports/delete_track/delete_track_model.dart';
import 'package:qr_scan/app/domain/models/reports/discount/discount_model.dart';
import 'package:qr_scan/app/domain/models/reports/gift_card/gift_card_model.dart';
import 'package:qr_scan/app/domain/models/reports/gratuity/gratuity_model.dart';
import 'package:qr_scan/app/domain/models/reports/report_food/report_food_model.dart';
import 'package:qr_scan/app/domain/models/reports/table_lock/table_lock_model.dart';
import 'package:qr_scan/app/domain/typedef.dart';

class ReportsApi {
  final Http _http;

  ReportsApi(this._http);

  // Lista de reportes de items eliminados acorde a la fecha
  Future<Either<HttpRequestFailure, List<DeleteItemModel>>>
      getListReportDeleteItems({
    required String token,
    required int restId,
    required String startDate,
    required String endDate,
  }) async {
    final result = await _http.request(
      '/api/DeleteItem/List/$restId/$startDate/$endDate',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => DeleteItemModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // Lista de reportes de items Track eliminados acorde a la fecha
  Future<Either<HttpRequestFailure, List<DeleteTrackModel>>>
      getListReportDeleteTrack({
    required String token,
    required int restId,
    required int idEmployee,
    required String startDate,
    required String endDate,
  }) async {
    final result = await _http.request(
      '/api/DeleteTrack/List/$restId/$idEmployee/$startDate/$endDate',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => DeleteTrackModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // Lista de reportes de gift Cards acorde a la fecha
  Future<Either<HttpRequestFailure, List<GiftCardModel>>>
      getListReportGiftCards({
    required String token,
    required int restId,
    required int idEmployee,
    required String startDate,
    required String endDate,
  }) async {
    final result = await _http.request(
      '/api/GiftCard/List/$restId/$idEmployee/$startDate/$endDate',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => GiftCardModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // Lista de reportes de Gratificaciones acorde a la fecha
  Future<Either<HttpRequestFailure, List<GratuityModel>>>
      getListReportGratuity({
    required String token,
    required int restId,
    required int idEmployee,
    required String startDate,
    required String endDate,
  }) async {
    final result = await _http.request(
      '/api/Gratuity/List/$restId/$idEmployee/$startDate/$endDate',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => GratuityModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // Lista de reportes de Descuentos acorde a la fecha
  Future<Either<HttpRequestFailure, List<DiscountModel>>>
      getListReportDiscount({
    required String token,
    required int restId,
    required int idEmployee,
    required String startDate,
    required String endDate,
  }) async {
    final result = await _http.request(
      '/api/Discount/List/$restId/$idEmployee/$startDate/$endDate',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => DiscountModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // Lista de reportes de Cupones acorde a la fecha
  Future<Either<HttpRequestFailure, List<CouponModel>>> getListReportCoupons({
    required String token,
    required int restId,
    required int idEmployee,
    required String startDate,
    required String endDate,
  }) async {
    final result = await _http.request(
      '/api/Coupon/List/$restId/$idEmployee/$startDate/$endDate',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => CouponModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  Future<Either<HttpRequestFailure, List<ReportFoodModel>>> getListReportFood({
    required String token,
    required int restId,
    required String startDate,
    required String endDate,
    required int idType,
  }) async {
    final result = await _http.request(
      '/api/FoodOrder/Report/$restId/$startDate/$endDate/$idType',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => ReportFoodModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // Lista de reportes para eliminacion de mesas
  Future<Either<HttpRequestFailure, List<TableLockModel>>>
      getListReportTableLock({
    required String token,
    required int restId,
  }) async {
    final result = await _http.request(
      '/api/TableLock/List/$restId/0',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => TableLockModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // eliminar table Lock
  Future<void> deleteTableLockItem({
    required String token,
    required int idTable,
    required int idRest,
    required String username,
  }) async {
    final result = await _http.request(
      '/api/TableLock/DeleteTableLock/$idTable/$idRest/$username',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    result.when(left: handleHttpFailure, right: (_) => null);
  }

  // Lista de reportes para credit card
  Future<Either<HttpRequestFailure, List<CreditCardModel>>>
      getListReportCreditCard({
    required String token,
    required int restId,
    required String lastCode,
    required String authCode,
    required String authAmount,
  }) async {
    final result = await _http.request(
      '/api/CreditCard/List/$restId/$lastCode/$authCode/$authAmount',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => CreditCardModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }
}
