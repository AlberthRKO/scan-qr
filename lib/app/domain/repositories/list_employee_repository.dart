import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';

abstract class ListEmployeeRepository {
  Future<Either<HttpRequestFailure, List<Employee>>> getListEmployee(int id);
}
