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

abstract class SystemRepository {
  Future<Either<HttpRequestFailure, List<EmailModel>>> getListEmails(
      int restId);
  Future<Either<HttpRequestFailure, List<RestaurantHoursModel>>>
      getListRestaurantHours(int restId);
  Future<Either<HttpRequestFailure, List<GlobalPropertyModel>>>
      getListGlobalPropertys(int restId);
  Future<Either<HttpRequestFailure, List<PrinterModel>>> getListPrinters(
      int restId);
  Future<Either<HttpRequestFailure, List<SuperUserPasswordModel>>>
      getListSuperUserPassword(int restId);
  Future<Either<HttpRequestFailure, List<ComputerStationModel>>>
      getListComputerStations(int restId);
  Future<Either<HttpRequestFailure, List<PasswordOnlineModel>>>
      getListPasswordOnline(int restId);
  Future<Either<HttpRequestFailure, List<SuperRestaurantModel>>>
      getListSuperRestaurant(int restId);

  Future<Either<HttpRequestFailure, RestaurantSetupModel>> getRestaurantId(
    int id,
  );
  Future<Either<HttpRequestFailure, Employee>> changePinEmployee(
      int id, int idEmployee);
}
