import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:qr_scan/app/data/services/local/token_services.dart';

import '../../domain/either/either.dart';

class Http {
  Http(
    this._ipServices, {
    required Client client,
    required String baseUrl,
  })  : _client = client,
        _baseUrl = baseUrl;

  final Client _client;
  final String _baseUrl;
  final IpServices _ipServices;

  Future<Either<HttpFailure, R>> request<R>(
    String path, {
    // Para que no devuelva solo string y devuelva otros datos, el String lo cambiamos a generico
    required R Function(dynamic responseBody) onSucces,
    HttpMethod method = HttpMethod.get,
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
    Duration timeOut = const Duration(seconds: 60),
  }) async {
    final ipServer = await _ipServices.ipServer;
    // Haremos que imprima logs para saber lso errores
    Map<String, dynamic> logs = {};
    StackTrace? stackTrace;

    try {
      Uri url;
      if (ipServer != null) {
        url = Uri.parse(
          path.startsWith('http') ? path : '$ipServer$path',
        );
      } else {
        url = Uri.parse(
          path.startsWith('http') ? path : '$_baseUrl$path',
        );
      }
      if (queryParameters.isNotEmpty) {
        url = url.replace(
          queryParameters: queryParameters,
        );
      }

      headers = {
        'Content-Type': 'application/json',
        ...headers,
      };

      late final Response response;

      final bodyString = json.encode(body);

      // antes de hacer la solicitud mandamos a log la url
      logs = {
        'url': url.toString(),
        'headers': headers,
        'method': method.name,
        'body': body,
        'startTime': DateTime.now().toString(),
      };

      switch (method) {
        case HttpMethod.get:
          response = await _client
              .get(
                url,
                headers: headers,
              )
              .timeout(timeOut);
        case HttpMethod.post:
          response = await _client
              .post(
                url,
                headers: headers,
                body: bodyString,
              )
              .timeout(timeOut);
        case HttpMethod.put:
          response = await _client
              .put(
                url,
                headers: headers,
                body: bodyString,
              )
              .timeout(timeOut);
        case HttpMethod.patch:
          response = await _client
              .patch(
                url,
                headers: headers,
                body: bodyString,
              )
              .timeout(timeOut);
        case HttpMethod.delete:
          response = await _client
              .delete(
                url,
                headers: headers,
                body: bodyString,
              )
              .timeout(timeOut);
      }

      final statusCode = response.statusCode;
      final responseBody = _parserResponseBody(response.body);

      logs = {
        ...logs,
        'statusCode': statusCode,
        'responseBody': responseBody,
      };

      if (statusCode >= 200 && statusCode < 300) {
        // aqui le pasamos el valor retornado de la funcion
        // print('Respuesta Exitosa');
        return Either.right(
          onSucces(responseBody),
        );
      }
      return Either.left(HttpFailure(statusCode: statusCode));
    } catch (e, s) {
      stackTrace = s;
      logs = {
        ...logs,
        'exception': e.runtimeType.toString(),
        // 'stacktrace': s.toString(),
      };
      if (e is SocketException || e is ClientException) {
        logs = {
          ...logs,
          'exception': 'NetworkException',
        };
        // Si entra aqui es por error de conexion
        return Either.left(HttpFailure(exception: NewtworkException()));
      }

      return Either.left(HttpFailure(exception: e));
    } finally {
      logs = {
        ...logs,
        'endTime': DateTime.now().toString(),
      };
      if (kDebugMode) {
        log(
          '''------------------------------------------------
          ${const JsonEncoder.withIndent('  ').convert(logs)}
          ---------------------------------------------''',
          stackTrace: stackTrace,
        );
      }
    }
  }
}

// casos de Error

class HttpFailure {
  HttpFailure({
    this.statusCode,
    this.exception,
  });

  final int? statusCode;
  final Object? exception;
}

class NewtworkException {}

enum HttpMethod {
  get,
  post,
  put,
  patch,
  delete,
}

// parseamos el response.body para el log
dynamic _parserResponseBody(String responseBody) {
  try {
    return jsonDecode(responseBody);
  } catch (_) {
    return responseBody;
  }
}
