import 'package:qr_scan/app/data/services/local/token_services.dart';
import 'package:qr_scan/app/data/services/remote/list_employee_api.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/repositories/list_employee_repository.dart';

class ListEmployeeRepositoryImpl implements ListEmployeeRepository {
  ListEmployeeRepositoryImpl(this._tokenServices, this._listEmployeeApi);

  final TokenServices _tokenServices;
  final ListEmployeeApi _listEmployeeApi;

  @override
  Future<Either<HttpRequestFailure, List<Employee>>> getListEmployee(
      int id) async {
    final token = await _tokenServices.token;

    return _listEmployeeApi.getListEmployees(token: token ?? '', id: id);
  }
}
