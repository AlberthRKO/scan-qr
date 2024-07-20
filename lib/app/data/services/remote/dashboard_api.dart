import 'package:qr_scan/app/data/http/http.dart';
import 'package:qr_scan/app/data/services/utils/handle_failure.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/dashboard/dashboard_model.dart';

class DashboardAPi {
  DashboardAPi(this._http);
  final Http _http;

  Future<Either<HttpRequestFailure, DashboardModel>> getDashboardDay({
    required String token,
    required int userId,
    required int restId,
  }) async {
    final result = await _http.request(
      '/api/Dashboard/GetDayNow',
      headers: {
        'Authorization': 'Bearer $token',
      },
      method: HttpMethod.post,
      body: {
        'userId': userId,
        'systemId': restId,
      },
      onSucces: (json) {
        return DashboardModel.fromJson(json);
      },
    );
    return result.when(
      left: handleHttpFailure,
      right: (dashboard) => Either.right(dashboard),
    );
  }

  // Reporte de Dashboard acorde a la fecha
  Future<Either<HttpRequestFailure, DashboardModel>> getReportDashboard({
    required String token,
    required int restId,
    required String startDate,
    required String endDate,
  }) async {
    final result = await _http.request(
      '/api/FoodOrder/GetData/$restId/$startDate/$endDate',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return DashboardModel.fromJson(json);
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (dashboard) => Either.right(dashboard),
    );
  }
}
