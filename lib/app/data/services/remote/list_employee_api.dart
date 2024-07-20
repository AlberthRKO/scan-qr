import 'package:qr_scan/app/data/http/http.dart';
import 'package:qr_scan/app/data/services/utils/handle_failure.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/typedef.dart';

class ListEmployeeApi {
  final Http _http;

  ListEmployeeApi(this._http);

  Future<Either<HttpRequestFailure, List<Employee>>> getListEmployees(
      {required String token, required int id}) async {
    final result = await _http.request(
      '/api/Employee/List/$id',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        // devuelve una lista de json de empleados
        // final list = json as List<Json>;
        final list = List<Json>.from(json);
        // tenemos que recorrer la lista para recuperar instancias de empleados
        /* // Programacion tradicional
          final items = <Employee>[];
          for (final item in list) {
            items.add(
              Employee.fromJson(item),
            );} */
        // Programacion funcional
        return list
            .map(
              (item) => Employee.fromJson(item),
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
