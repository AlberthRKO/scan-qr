import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/dashboard/dashboard_model.dart';

abstract class DashboardRepository {
  Future<Either<HttpRequestFailure, DashboardModel>> getDashboardDay(
    int userId,
    int restId,
  );
  Future<Either<HttpRequestFailure, DashboardModel>> getReportDashboard(
    int restId,
    String startDate,
    String endDate,
  );
}
