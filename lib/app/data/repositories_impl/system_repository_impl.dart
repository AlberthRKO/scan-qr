import 'package:qr_scan/app/data/services/local/token_services.dart';
import 'package:qr_scan/app/data/services/remote/system_setup.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/models/system_setup/computer_station/computer_station_model.dart';
import 'package:qr_scan/app/domain/models/system_setup/email/email_model.dart';
import 'package:qr_scan/app/domain/models/system_setup/global_property/global_property_model.dart';
import 'package:qr_scan/app/domain/models/system_setup/password_online/password_online_model.dart';
import 'package:qr_scan/app/domain/models/system_setup/printer/printer_model.dart';
import 'package:qr_scan/app/domain/models/system_setup/restaurant_hours/restaurant_hours_model.dart';
import 'package:qr_scan/app/domain/models/system_setup/restaurant_setup/restaurant_setup_model.dart';
import 'package:qr_scan/app/domain/models/system_setup/super_restaurant/super_restaurant_model.dart';
import 'package:qr_scan/app/domain/models/system_setup/super_user_password/super_user_password_model.dart';
import 'package:qr_scan/app/domain/repositories/system_repository.dart';

class SystemRepositoryImpl implements SystemRepository {
  SystemRepositoryImpl(this._tokenServices, this._systemSetupApi);

  final TokenServices _tokenServices;
  final SystemSetupApi _systemSetupApi;

  @override
  Future<Either<HttpRequestFailure, List<EmailModel>>> getListEmails(
      int restId) async {
    final token = await _tokenServices.token;

    return _systemSetupApi.getListEmails(token: token ?? '', restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, List<RestaurantHoursModel>>>
      getListRestaurantHours(int restId) async {
    final token = await _tokenServices.token;

    return _systemSetupApi.getListRestaurantHours(
        token: token ?? '', restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, List<GlobalPropertyModel>>>
      getListGlobalPropertys(int restId) async {
    final token = await _tokenServices.token;

    return _systemSetupApi.getListGlobalPropertys(
        token: token ?? '', restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, List<PrinterModel>>> getListPrinters(
      int restId) async {
    final token = await _tokenServices.token;

    return _systemSetupApi.getListPrinters(token: token ?? '', restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, List<SuperUserPasswordModel>>>
      getListSuperUserPassword(int restId) async {
    final token = await _tokenServices.token;

    return _systemSetupApi.getListSuperUserPassword(
        token: token ?? '', restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, List<ComputerStationModel>>>
      getListComputerStations(int restId) async {
    final token = await _tokenServices.token;

    return _systemSetupApi.getListComputerStations(
        token: token ?? '', restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, List<PasswordOnlineModel>>>
      getListPasswordOnline(int restId) async {
    final token = await _tokenServices.token;

    return _systemSetupApi.getListPasswordOnline(
        token: token ?? '', restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, List<SuperRestaurantModel>>>
      getListSuperRestaurant(int restId) async {
    final token = await _tokenServices.token;

    return _systemSetupApi.getListSuperRestaurant(
        token: token ?? '', restId: restId);
  }

  @override
  Future<Either<HttpRequestFailure, RestaurantSetupModel>> getRestaurantId(
      int id) async {
    final token = await _tokenServices.token;
    return _systemSetupApi.getRestaurantId(token: token ?? '', restId: id);
  }

  @override
  Future<Either<HttpRequestFailure, Employee>> changePinEmployee(
      int id, int idEmployee) async {
    final token = await _tokenServices.token;
    return _systemSetupApi.changePinEmployee(
        token: token ?? '', restId: id, idEmployee: idEmployee);
  }
}
