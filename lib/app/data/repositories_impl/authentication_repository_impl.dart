import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/failures/sign_in/sign_in_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';

import '../../domain/either/either.dart';
import '../../domain/models/user/user.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../services/local/token_services.dart';
import '../services/remote/account_api.dart';
import '../services/remote/authentication_api.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl(
    this._authenticationApi,
    this._tokenServices,
    this._ipServices,
    this._accountAPI,
    this._userServices,
    this._passUserServices,
  );
  final TokenServices _tokenServices;
  final IpServices _ipServices;
  final AuthenticationApi _authenticationApi;
  final AccountAPI _accountAPI;

  final UserServices _userServices;
  final PassUserServices _passUserServices;
  // funcionalidad de session activa
  @override
  Future<bool> get isSignedIn async {
    final token = await _tokenServices.token;
    final ipServer = await _ipServices.ipServer;
    if (kDebugMode) print('La IP es $ipServer');
    if (kDebugMode) print('El tokensito es $token');
    if (ipServer != null) {
      return true;
    }
    if (token != null) {
      return true;
    }
    // hay una session acticva si es distinto
    // print('El tokensito es $token');
    return false;
  }

  @override
  Future<Either<SignInFailure, User>> signIn(
      String username, String password) async {
    final loginResult = await _authenticationApi.createLogin(
        username: username, password: password);

    return loginResult.when(
      left: (failure) {
        return Either.left(failure);
      },
      right: (token) async {
        await _tokenServices.saveToken(token);
        final user = await _accountAPI.getAccount(token: token);
        /* final user = User(
          name: 'alberth',
        ); */
        if (user == null) {
          return Either.left(SignInFailureNetwork());
        }
        return Either.right(user);
      },
    );

    /* // Guardamos el inicio de session con flutterSecure
    await _flutterSecureStorage.write(key: _key, value: '123');

    return Either.right(User()); */
  }

  @override
  Future<void> asignarIP(String ipServer) async {
    return await _ipServices.saveIp(ipServer);
    // return _tokenServices.deleteToken();
  }

  @override
  Future<String> readIP() async {
    return await _ipServices.ipServer ?? '';
    // return _tokenServices.deleteToken();
  }

  @override
  Future<void> deleteIp() {
    return _ipServices.deleteIp();
  }

  @override
  Future<void> signOut() {
    return _tokenServices.deleteToken();
  }

  // Seccion de Guardado de Acceso Usuario
  @override
  Future<void> asignarUser(String user) async {
    return await _userServices.saveUser(user);
    // return _tokenServices.deleteToken();
  }

  @override
  Future<String> readUser() async {
    return await _userServices.user ?? '';
    // return _tokenServices.deleteToken();
  }

  @override
  Future<void> deleteUser() {
    return _userServices.deleteUser();
  }

  @override
  Future<void> asignarPassUser(String passUser) async {
    return await _passUserServices.savePassUser(passUser);
    // return _tokenServices.deleteToken();
  }

  @override
  Future<String> readPassUser() async {
    return await _passUserServices.passUser ?? '';
    // return _tokenServices.deleteToken();
  }

  @override
  Future<void> deletePassUser() {
    return _passUserServices.deletePassUser();
  }

  @override
  Future<Either<HttpRequestFailure, Employee>> accessWithPin(
    String restId,
    String pinEmployee,
  ) async {
    final token = await _tokenServices.token;

    return _authenticationApi.accessWithPin(
      token: token ?? '',
      restId: restId,
      pinEmployee: pinEmployee,
    );
  }
}
