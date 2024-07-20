// import 'dart:async';

import 'package:qr_scan/app/data/services/utils/handle_failure.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/failures/sign_in/sign_in_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/typedef.dart';

import '../../../domain/either/either.dart';
import '../../http/http.dart';

class AuthenticationApi {
  AuthenticationApi(this._http);
  final Http _http;

  // Funcion para reutilizar los Either
  Either<SignInFailure, String> _handleFailure(HttpFailure failure) {
    if (failure.statusCode != null) {
      switch (failure.statusCode!) {
        case 401:
          return Either.left(SignInFailureUnathorized());
        case 404:
          return Either.left(SignInFailureNotFound());
        default:
          return Either.left(SignInFailureUnknown());
      }
    }

    if (failure.exception is NewtworkException) {
      return Either.left(SignInFailureNetwork());
    }

    return Either.left(SignInFailureUnknown());
  }

  /* Future<String?> createRequestToken() async {
    final result = await _http.request('/api/User');
    // con la respuesta de la api usamos programacion funcional del either llamando a when para definir los callbacks
    final requestToken = result.when((failure) => null, (responseBody) {
      final json = Map<String, dynamic>.from(
        jsonDecode(responseBody),
      );
      return json['request_token'] as String;
    });
    return requestToken;
  } */

  Future<Either<SignInFailure, String>> createLogin({
    required String username,
    required String password,
  }) async {
    final result = await _http.request(
      '/api/User/Login',
      method: HttpMethod.post,
      body: {
        'username': username,
        'password': password,
      },
      // procesamos la respuesta
      onSucces: (responseBody) {
        // ya lo convertimos desde el http y solo indicamos que sera
        /*final json = Map<String, dynamic>.from(
          jsonDecode(responseBody),
        ); */
        final json = responseBody as Map;
        return json['token'] as String;
      },
    );

    return result.when(
      left: _handleFailure,
      right: (requestToken) => Either.right(
        requestToken,
      ),
    );
  }

  Future<Either<HttpRequestFailure, Employee>> accessWithPin({
    required String token,
    required String restId,
    required String pinEmployee,
  }) async {
    final result = await _http.request(
      '/api/Employee/GetByPin/$restId/$pinEmployee',
      headers: {
        'Authorization': 'Bearer $token',
      },
      // procesamos la respuesta
      onSucces: (responseBody) {
        final employee = Json.from(responseBody);
        return Employee.fromJson(employee);
      },
    );

    return result.when(
      left: handleHttpFailure,
      right: (employee) => Either.right(employee),
    );
  }
}
