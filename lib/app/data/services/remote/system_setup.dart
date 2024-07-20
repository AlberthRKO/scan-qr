import 'package:qr_scan/app/data/http/http.dart';
import 'package:qr_scan/app/data/services/utils/handle_failure.dart';
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
import 'package:qr_scan/app/domain/typedef.dart';

class SystemSetupApi {
  final Http _http;

  SystemSetupApi(this._http);

  // Obtener restaurant por id
  // listar las impresoras del restaurant
  Future<Either<HttpRequestFailure, RestaurantSetupModel>> getRestaurantId({
    required String token,
    required int restId,
  }) async {
    final result = await _http.request(
      '/api/System/Get/$restId',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return RestaurantSetupModel.fromJson(json);
      },
    );
    return result.when(
      left: handleHttpFailure,
      right: (restaurantId) => Either.right(restaurantId),
    );
  }

  // Cambiar Pin de employee default
  Future<Either<HttpRequestFailure, Employee>> changePinEmployee(
      {required String token,
      required int restId,
      required int idEmployee}) async {
    final result = await _http.request(
      '/api/Employee/GetEmployeePassword/$restId/$idEmployee',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return Employee.fromJson(json);
      },
    );
    return result.when(
      left: handleHttpFailure,
      right: (employee) => Either.right(employee),
    );
  }

  Future<Either<HttpRequestFailure, List<EmailModel>>> getListEmails(
      {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/Email/List/$restId',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => EmailModel.fromJson(item),
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

  // listar las horas de trabajo del restaurant
  Future<Either<HttpRequestFailure, List<RestaurantHoursModel>>>
      getListRestaurantHours(
          {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/RESTAURANTHOURS/List/$restId',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => RestaurantHoursModel.fromJson(item),
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

  // listar las propiedades globales del restaurant
  Future<Either<HttpRequestFailure, List<GlobalPropertyModel>>>
      getListGlobalPropertys(
          {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/GLOBALPROPERTY/List/$restId/0',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => GlobalPropertyModel.fromJson(item),
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

  // listar las impresoras del restaurant
  Future<Either<HttpRequestFailure, List<PrinterModel>>> getListPrinters(
      {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/PRINTER/List/$restId/0',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => PrinterModel.fromJson(item),
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

  // listar las paswords P del restaurant
  Future<Either<HttpRequestFailure, List<SuperUserPasswordModel>>>
      getListSuperUserPassword(
          {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/P/List/$restId/0',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => SuperUserPasswordModel.fromJson(item),
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

  // listar los ComputerStation del restaurant
  Future<Either<HttpRequestFailure, List<ComputerStationModel>>>
      getListComputerStations(
          {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/COMPUTERSTATION/List/$restId/0',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => ComputerStationModel.fromJson(item),
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

  // listar los Ips del restaurant
  Future<Either<HttpRequestFailure, List<PasswordOnlineModel>>>
      getListPasswordOnline(
          {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/IP/List/$restId',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => PasswordOnlineModel.fromJson(item),
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

  // listar los SuperRestaurants del restaurant
  Future<Either<HttpRequestFailure, List<SuperRestaurantModel>>>
      getListSuperRestaurant(
          {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/SUPERRESTAURANT/List/$restId/0',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => SuperRestaurantModel.fromJson(item),
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
