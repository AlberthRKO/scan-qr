import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/models/employee_setup/employee_schedule/employee_schedule_model.dart';
import 'package:qr_scan/app/domain/models/employee_setup/shift_hours/shift_hours_model.dart';

abstract class EmployeeRepository {
  Future<Either<HttpRequestFailure, Employee>> getEmployee(
      int id, int employeeId);
  Future<Either<HttpRequestFailure, ShiftHoursModel>> getShiftHourEmployee(
      int restId, int idShift);

  Future<void> deleteEmployee(int idEmployee, int idRest, String username);

  Future<Either<HttpRequestFailure, void>> addEmployee(
    Employee employee,
    int restId,
  );
  Future<Either<HttpRequestFailure, void>> editEmployee(
    Employee employee,
    int restId,
    int idEmployee,
  );
  Future<Either<HttpRequestFailure, void>> editShiftHourEmployee(
    ShiftHoursModel shiftHoursModel,
    int restId,
    int idShift,
  );
  Future<Either<HttpRequestFailure, void>> onlineManagerSystem(
    int restId,
    int idEmployee,
  );
  Future<Either<HttpRequestFailure, void>> clockInEmployee(
    int restId,
    String pin,
    String date,
    String time,
  );
  Future<Either<HttpRequestFailure, void>> clockOutEmployee(
    int restId,
    String pin,
    String date,
    String time,
  );
  Future<Either<HttpRequestFailure, void>> breakInEmployee(
    int restId,
    String pin,
    String date,
    String time,
  );
  Future<Either<HttpRequestFailure, void>> breakOutEmployee(
    int restId,
    String pin,
    String date,
    String time,
  );

  Future<Either<HttpRequestFailure, List<ShiftHoursModel>>> getListShiftHours(
    int restId,
    int idEmployee,
    String startDate,
    String endDate,
  );

  Future<Either<HttpRequestFailure, List<EmployeeScheduleModel>>>
      getListEmployeeSchedule(
    int restId,
    int idEmployee,
  );
}
