import 'package:qr_scan/app/data/services/local/token_services.dart';
import 'package:qr_scan/app/data/services/remote/employee_api.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/models/employee_setup/employee_schedule/employee_schedule_model.dart';
import 'package:qr_scan/app/domain/models/employee_setup/shift_hours/shift_hours_model.dart';
import 'package:qr_scan/app/domain/repositories/employee_repository.dart';

class EmployeeRepositoryImpl implements EmployeeRepository {
  EmployeeRepositoryImpl(this._tokenServices, this._employeeApi);

  final TokenServices _tokenServices;
  final EmployeeApi _employeeApi;

  @override
  Future<Either<HttpRequestFailure, Employee>> getEmployee(
      int id, int employeeId) async {
    final token = await _tokenServices.token;

    return _employeeApi.getEmployee(
        token: token ?? '', id: id, employeeId: employeeId);
  }

  @override
  Future<Either<HttpRequestFailure, ShiftHoursModel>> getShiftHourEmployee(
      int restId, int idShift) async {
    final token = await _tokenServices.token;

    return _employeeApi.getShiftHourEmployee(
        token: token ?? '', restId: restId, idShift: idShift);
  }

  @override
  Future<void> deleteEmployee(
      int idEmployee, int idRest, String username) async {
    final token = await _tokenServices.token;
    _employeeApi.deleteEmployee(
        token: token ?? '',
        idEmployee: idEmployee,
        idRest: idRest,
        username: username);
  }

  @override
  Future<Either<HttpRequestFailure, void>> addEmployee(
    Employee employee,
    int restId,
  ) async {
    final token = await _tokenServices.token;
    return _employeeApi.addEmployee(
      token: token ?? '',
      employee: employee,
      restId: restId,
    );
  }

  @override
  Future<Either<HttpRequestFailure, void>> editEmployee(
      Employee employee, int restId, int idEmployee) async {
    final token = await _tokenServices.token;
    return _employeeApi.editEmployee(
      token: token ?? '',
      employee: employee,
      restId: restId,
      idEmployee: idEmployee,
    );
  }

  @override
  Future<Either<HttpRequestFailure, void>> editShiftHourEmployee(
      ShiftHoursModel shiftHoursModel, int restId, int idShift) async {
    final token = await _tokenServices.token;
    return _employeeApi.editShiftHourEmployee(
      token: token ?? '',
      shiftHoursModel: shiftHoursModel,
      restId: restId,
      idShift: idShift,
    );
  }

  @override
  Future<Either<HttpRequestFailure, void>> onlineManagerSystem(
      int restId, int idEmployee) async {
    final token = await _tokenServices.token;
    return _employeeApi.onlineManagerSystem(
      token: token ?? '',
      restId: restId,
      idEmployee: idEmployee,
    );
  }

  @override
  Future<Either<HttpRequestFailure, void>> clockInEmployee(
      int restId, String pin, String date, String time) async {
    final token = await _tokenServices.token;
    return _employeeApi.clockInEmployee(
      token: token ?? '',
      restId: restId,
      pin: pin,
      date: date,
      time: time,
    );
  }

  @override
  Future<Either<HttpRequestFailure, void>> clockOutEmployee(
      int restId, String pin, String date, String time) async {
    final token = await _tokenServices.token;
    return _employeeApi.clockOutEmployee(
      token: token ?? '',
      restId: restId,
      pin: pin,
      date: date,
      time: time,
    );
  }

  @override
  Future<Either<HttpRequestFailure, void>> breakInEmployee(
      int restId, String pin, String date, String time) async {
    final token = await _tokenServices.token;
    return _employeeApi.breakInEmployee(
      token: token ?? '',
      restId: restId,
      pin: pin,
      date: date,
      time: time,
    );
  }

  @override
  Future<Either<HttpRequestFailure, void>> breakOutEmployee(
      int restId, String pin, String date, String time) async {
    final token = await _tokenServices.token;
    return _employeeApi.breakOutEmployee(
      token: token ?? '',
      restId: restId,
      pin: pin,
      date: date,
      time: time,
    );
  }

  /* Section de Shift Hours */
  @override
  Future<Either<HttpRequestFailure, List<ShiftHoursModel>>> getListShiftHours(
      int restId, int idEmployee, String startDate, String endDate) async {
    final token = await _tokenServices.token;

    return _employeeApi.getListShiftHours(
      token: token ?? '',
      restId: restId,
      idEmployee: idEmployee,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<EmployeeScheduleModel>>>
      getListEmployeeSchedule(int restId, int idEmployee) async {
    final token = await _tokenServices.token;

    return _employeeApi.getListEmployeeSchedule(
      token: token ?? '',
      restId: restId,
      idEmployee: idEmployee,
    );
  }
}
