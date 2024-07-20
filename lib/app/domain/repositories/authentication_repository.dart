import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/failures/sign_in/sign_in_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';

import '../either/either.dart';
import '../models/user/user.dart';

abstract class AuthenticationRepository {
  Future<bool> get isSignedIn;
  // si tenemos session activa recuperamos los datos

  Future<void> signOut();
  Future<void> deleteIp();
  Future<void> asignarIP(String ipServer);
  Future<String?> readIP();

  // Seccion de guardado de acceso de Usuario
  Future<void> deleteUser();
  Future<void> asignarUser(String user);
  Future<String?> readUser();
  Future<void> deletePassUser();
  Future<void> asignarPassUser(String passUser);
  Future<String?> readPassUser();

  // Funcion para login

  Future<Either<SignInFailure, User>> signIn(String username, String password);
  Future<Either<HttpRequestFailure, Employee>> accessWithPin(
      String restId, String pinEmployee);
}
