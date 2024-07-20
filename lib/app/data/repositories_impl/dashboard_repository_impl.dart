import 'package:qr_scan/app/data/services/local/token_services.dart';
import 'package:qr_scan/app/data/services/remote/dashboard_api.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/dashboard/dashboard_model.dart';
import 'package:qr_scan/app/domain/repositories/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl(this._tokenServices, this._dashboardAPi);

  final TokenServices _tokenServices;
  final DashboardAPi _dashboardAPi;

  @override
  Future<Either<HttpRequestFailure, DashboardModel>> getDashboardDay(
      int userId, int restId) async {
    final token = await _tokenServices.token;
    return _dashboardAPi.getDashboardDay(
        token: token ?? '', userId: userId, restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, DashboardModel>> getReportDashboard(
      int restId, String startDate, String endDate) async {
    final token = await _tokenServices.token;

    return _dashboardAPi.getReportDashboard(
      token: token ?? '',
      restId: restId,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
