import 'package:qr_scan/app/data/http/http.dart';
import 'package:qr_scan/app/data/services/utils/handle_failure.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/models/employee_setup/employee_schedule/employee_schedule_model.dart';
import 'package:qr_scan/app/domain/models/employee_setup/shift_hours/shift_hours_model.dart';
import 'package:qr_scan/app/domain/typedef.dart';

class EmployeeApi {
  EmployeeApi(this._http);
  final Http _http;

  Future<Either<HttpRequestFailure, Employee>> getEmployee({
    required String token,
    required int id,
    required int employeeId,
  }) async {
    final result = await _http.request(
      '/api/employee/Get/$id/$employeeId',
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

  Future<Either<HttpRequestFailure, void>> addEmployee({
    required String token,
    required Employee employee,
    required int restId,
  }) async {
    final result = await _http.request(
      '/api/Employee/PostSave/$restId',
      method: HttpMethod.post,
      body: {
        'name': employee.name,
        'firstname': employee.firstname,
        'lastname': employee.lastname,
        'pin': employee.pin,
        'active': employee.active,
        'longpin': employee.longpin,
        'cell': employee.cell,
        'ismanager': employee.ismanager,
        'shiftmanager': employee.shiftmanager,
        'managerrate': employee.managerrate,
        'iscurrentdriver': employee.iscurrentdriver,
        'driverrate': employee.driverrate,
        'iscurrentwaiter': employee.iscurrentwaiter,
        'waiterrate': employee.waiterrate,
        'bartender': employee.bartender,
        'bartenderrate': employee.bartenderrate,
        'iscashier': employee.iscashier,
        'cashierrate': employee.cashierrate,
        'ishost': employee.ishost,
        'hostrate': employee.hostrate,
        'iscook': employee.iscook,
        'cookrate': employee.cookrate,
        'isbus': employee.isbus,
        'busrate': employee.busrate,
        'isrunner': employee.isrunner,
        'runnerrate': employee.runnerrate,
        'iskitchen': employee.iskitchen,
        'kitchenrate': employee.kitchenrate,
        'dishwasher': employee.dishwasher,
        'dishrate': employee.dishrate,
        'linejob': employee.linejob,
        'linerate': employee.linerate,
        'overtime': employee.overtime,
        'hourlyrate': employee.hourlyrate,
        'salary': employee.salary,
        'commissionpercent': employee.commissionpercent,
        'dollardiscountlimit': employee.dollardiscountlimit,
        'percentdiscountlimit': employee.percentdiscountlimit,
        'cashdrawerhost': employee.cashdrawerhost,
        'cashdrawerport': employee.cashdrawerport,
        'localcashdraweronly': employee.localcashdraweronly,
        'birthday': employee.birthday,
        'contactphoneareacode': employee.contactphoneareacode,
        'contactphone': employee.contactphone,
        'contactperson': employee.contactperson,
        'defaultscreen': employee.defaultscreen,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  Future<Either<HttpRequestFailure, void>> editEmployee(
      {required String token,
      required Employee employee,
      required int restId,
      required int idEmployee}) async {
    final result = await _http.request(
      '/api/Employee/Post/$restId/$idEmployee',
      method: HttpMethod.post,
      body: {
        'name': employee.name,
        'firstname': employee.firstname,
        'lastname': employee.lastname,
        'pin': employee.pin,
        'active': employee.active,
        'longpin': employee.longpin,
        'cell': employee.cell,
        'ismanager': employee.ismanager,
        'shiftmanager': employee.shiftmanager,
        'managerrate': employee.managerrate,
        'iscurrentdriver': employee.iscurrentdriver,
        'driverrate': employee.driverrate,
        'iscurrentwaiter': employee.iscurrentwaiter,
        'waiterrate': employee.waiterrate,
        'bartender': employee.bartender,
        'bartenderrate': employee.bartenderrate,
        'iscashier': employee.iscashier,
        'cashierrate': employee.cashierrate,
        'ishost': employee.ishost,
        'hostrate': employee.hostrate,
        'iscook': employee.iscook,
        'cookrate': employee.cookrate,
        'isbus': employee.isbus,
        'busrate': employee.busrate,
        'isrunner': employee.isrunner,
        'runnerrate': employee.runnerrate,
        'iskitchen': employee.iskitchen,
        'kitchenrate': employee.kitchenrate,
        'dishwasher': employee.dishwasher,
        'dishrate': employee.dishrate,
        'linejob': employee.linejob,
        'linerate': employee.linerate,
        'overtime': employee.overtime,
        'hourlyrate': employee.hourlyrate,
        'salary': employee.salary,
        'commissionpercent': employee.commissionpercent,
        'dollardiscountlimit': employee.dollardiscountlimit,
        'percentdiscountlimit': employee.percentdiscountlimit,
        'cashdrawerhost': employee.cashdrawerhost,
        'cashdrawerport': employee.cashdrawerport,
        'localcashdraweronly': employee.localcashdraweronly,
        'birthday': employee.birthday,
        'contactphoneareacode': employee.contactphoneareacode,
        'contactphone': employee.contactphone,
        'contactperson': employee.contactperson,
        'defaultscreen': employee.defaultscreen,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  // Eliminar employee
  Future<void> deleteEmployee({
    required String token,
    required int idEmployee,
    required int idRest,
    required String username,
  }) async {
    final result = await _http.request(
      '/api/Employee/DeleteEmployee/$idEmployee/$idRest/$username',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    result.when(left: handleHttpFailure, right: (_) => null);
  }

  /* Section de Shift Hours */
  // Lista de horas Trabajadas acorde a la fecha
  Future<Either<HttpRequestFailure, List<ShiftHoursModel>>> getListShiftHours({
    required String token,
    required int restId,
    required int idEmployee,
    required String startDate,
    required String endDate,
  }) async {
    final result = await _http.request(
      '/api/Shift/List/$restId/$idEmployee/$startDate/$endDate',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        return list
            .map(
              (item) => ShiftHoursModel.fromJson(item),
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

  Future<Either<HttpRequestFailure, ShiftHoursModel>> getShiftHourEmployee({
    required String token,
    required int restId,
    required int idShift,
  }) async {
    final result = await _http.request(
      '/api/Shift/Get/$restId/$idShift',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return ShiftHoursModel.fromJson(json);
      },
    );
    return result.when(
      left: handleHttpFailure,
      right: (shiftHour) => Either.right(shiftHour),
    );
  }

  Future<Either<HttpRequestFailure, void>> editShiftHourEmployee(
      {required String token,
      required ShiftHoursModel shiftHoursModel,
      required int restId,
      required int idShift}) async {
    final result = await _http.request(
      '/api/Shift/Post/$restId/$idShift',
      method: HttpMethod.post,
      body: {
        'timeInString': shiftHoursModel.timeInString,
        'timeOutString': shiftHoursModel.timeOutString,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  // Section de employeeSchedule
  Future<Either<HttpRequestFailure, List<EmployeeScheduleModel>>>
      getListEmployeeSchedule(
          {required String token,
          required int restId,
          required int idEmployee}) async {
    final result = await _http.request(
      '/api/EmployeeSchedule/List/$restId/$idEmployee/2',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);

        // Programacion funcional
        return list
            .map(
              (item) => EmployeeScheduleModel.fromJson(item),
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

  Future<Either<HttpRequestFailure, void>> onlineManagerSystem({
    required String token,
    required int restId,
    required int idEmployee,
  }) async {
    final result = await _http.request(
      '/api/System/UpdateDefaultEmployee/$restId/$idEmployee',
      method: HttpMethod.post,
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  Future<Either<HttpRequestFailure, void>> clockInEmployee({
    required String token,
    required int restId,
    required String pin,
    required String date,
    required String time,
  }) async {
    final result = await _http.request(
      '/api/Shift/ClockIn/$restId/$pin/$date/$time',
      method: HttpMethod.post,
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  Future<Either<HttpRequestFailure, void>> clockOutEmployee({
    required String token,
    required int restId,
    required String pin,
    required String date,
    required String time,
  }) async {
    final result = await _http.request(
      '/api/Shift/ClockOut/$restId/$pin/$date/$time',
      method: HttpMethod.post,
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  Future<Either<HttpRequestFailure, void>> breakInEmployee({
    required String token,
    required int restId,
    required String pin,
    required String date,
    required String time,
  }) async {
    final result = await _http.request(
      '/api/Shift/BreakIn/$restId/$pin/$date/$time',
      method: HttpMethod.post,
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  Future<Either<HttpRequestFailure, void>> breakOutEmployee({
    required String token,
    required int restId,
    required String pin,
    required String date,
    required String time,
  }) async {
    final result = await _http.request(
      '/api/Shift/BreakOut/$restId/$pin/$date/$time',
      method: HttpMethod.post,
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }
}
