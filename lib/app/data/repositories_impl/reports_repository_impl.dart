import 'package:qr_scan/app/data/services/local/token_services.dart';
import 'package:qr_scan/app/data/services/remote/reports_api.dart';
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
import 'package:qr_scan/app/domain/repositories/reports_repository.dart';

class ReportsRepositoryImpl implements ReportsRepository {
  ReportsRepositoryImpl(this._tokenServices, this._reportsApi);

  final TokenServices _tokenServices;
  final ReportsApi _reportsApi;

  @override
  Future<Either<HttpRequestFailure, List<DeleteItemModel>>>
      getListReportDeleteItems(
    int restId,
    String startDate,
    String endDate,
  ) async {
    final token = await _tokenServices.token;

    return _reportsApi.getListReportDeleteItems(
      token: token ?? '',
      restId: restId,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<DeleteTrackModel>>>
      getListReportDeleteTrack(
    int restId,
    int idEmployee,
    String startDate,
    String endDate,
  ) async {
    final token = await _tokenServices.token;

    return _reportsApi.getListReportDeleteTrack(
      token: token ?? '',
      restId: restId,
      idEmployee: idEmployee,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<GiftCardModel>>>
      getListReportGiftCards(
          int restId, int idEmployee, String startDate, String endDate) async {
    final token = await _tokenServices.token;

    return _reportsApi.getListReportGiftCards(
      token: token ?? '',
      restId: restId,
      idEmployee: idEmployee,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<GratuityModel>>> getListReportGratuity(
      int restId, int idEmployee, String startDate, String endDate) async {
    final token = await _tokenServices.token;

    return _reportsApi.getListReportGratuity(
      token: token ?? '',
      restId: restId,
      idEmployee: idEmployee,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<ReportFoodModel>>> getListReportFood(
      int restId, String startDate, String endDate, int idType) async {
    final token = await _tokenServices.token;

    return _reportsApi.getListReportFood(
      token: token ?? '',
      restId: restId,
      startDate: startDate,
      endDate: endDate,
      idType: idType,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<DiscountModel>>> getListReportDiscount(
      int restId, int idEmployee, String startDate, String endDate) async {
    final token = await _tokenServices.token;

    return _reportsApi.getListReportDiscount(
      token: token ?? '',
      restId: restId,
      idEmployee: idEmployee,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<CouponModel>>> getListReportCoupons(
      int restId, int idEmployee, String startDate, String endDate) async {
    final token = await _tokenServices.token;

    return _reportsApi.getListReportCoupons(
      token: token ?? '',
      restId: restId,
      idEmployee: idEmployee,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<TableLockModel>>>
      getListReportTableLock(int restId) async {
    final token = await _tokenServices.token;

    return _reportsApi.getListReportTableLock(
        token: token ?? '', restId: restId);
  }

  @override
  Future<void> deleteTableLockItem(
      int idTable, int idRest, String username) async {
    final token = await _tokenServices.token;
    _reportsApi.deleteTableLockItem(
      token: token ?? '',
      idTable: idTable,
      idRest: idRest,
      username: username,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<CreditCardModel>>>
      getListReportCreditCard(int restId, String lastCode, String authCode,
          String authAmount) async {
    final token = await _tokenServices.token;
    return _reportsApi.getListReportCreditCard(
      token: token ?? '',
      restId: restId,
      lastCode: lastCode,
      authCode: authCode,
      authAmount: authAmount,
    );
  }
}
