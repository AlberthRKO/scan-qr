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

abstract class ReportsRepository {
  Future<Either<HttpRequestFailure, List<DeleteItemModel>>>
      getListReportDeleteItems(
    int restId,
    String startDate,
    String endDate,
  );
  Future<Either<HttpRequestFailure, List<DeleteTrackModel>>>
      getListReportDeleteTrack(
    int restId,
    int idEmployee,
    String startDate,
    String endDate,
  );
  Future<Either<HttpRequestFailure, List<GiftCardModel>>>
      getListReportGiftCards(
    int restId,
    int idEmployee,
    String startDate,
    String endDate,
  );
  Future<Either<HttpRequestFailure, List<GratuityModel>>> getListReportGratuity(
    int restId,
    int idEmployee,
    String startDate,
    String endDate,
  );
  Future<Either<HttpRequestFailure, List<ReportFoodModel>>> getListReportFood(
    int restId,
    String startDate,
    String endDate,
    int idType,
  );
  Future<Either<HttpRequestFailure, List<DiscountModel>>> getListReportDiscount(
    int restId,
    int idEmployee,
    String startDate,
    String endDate,
  );
  Future<Either<HttpRequestFailure, List<CouponModel>>> getListReportCoupons(
    int restId,
    int idEmployee,
    String startDate,
    String endDate,
  );
  Future<Either<HttpRequestFailure, List<TableLockModel>>>
      getListReportTableLock(
    int restId,
  );
  Future<void> deleteTableLockItem(int idTable, int idRest, String username);

  Future<Either<HttpRequestFailure, List<CreditCardModel>>>
      getListReportCreditCard(
    int restId,
    String lastCode,
    String authCode,
    String authAmount,
  );
}
