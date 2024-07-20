// Manejo de estados globales

import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/models/restaurant/restaurant.dart';
import 'package:qr_scan/app/domain/models/user_save/user_save_model.dart';

import '../../domain/models/user/user.dart';
import '../../domain/repositories/authentication_repository.dart';
import 'state_notifier.dart';

class SessionController extends StateNotifier<User?> {
  SessionController({
    required this.authenticationRepository,
  }) : super(null);

  final AuthenticationRepository authenticationRepository;

  // funcion pubkica para guardar los datos del usuario
  void setUser(User user) {
    state = user;
  }

  void signOut() {
    authenticationRepository.signOut();
    onlyUpdate(null);
    // sacamos eso para q no escuchen los otros
    // state = null;
  }
}

class RestaurantController extends StateNotifier<Restaurant?> {
  RestaurantController({
    required this.authenticationRepository,
  }) : super(null);

  final AuthenticationRepository authenticationRepository;

  // funcion pubkica para guardar los datos del usuario
  void setUser(Restaurant user) {
    state = user;
  }

  void signOut() {
    authenticationRepository.signOut();
    onlyUpdate(null);
    // sacamos eso para q no escuchen los otros
    // state = null;
  }
}

class UserPassController extends StateNotifier<UserSaveModel?> {
  UserPassController({
    required this.authenticationRepository,
  }) : super(null);

  final AuthenticationRepository authenticationRepository;

  // funcion pubkica para guardar los datos del usuario
  void setUser(UserSaveModel user) {
    state = user;
  }

  void signOut() {
    authenticationRepository.signOut();
    onlyUpdate(null);
    // sacamos eso para q no escuchen los otros
    // state = null;
  }
}

class EmployeeSessionPinController extends StateNotifier<Employee?> {
  EmployeeSessionPinController({
    required this.authenticationRepository,
  }) : super(null);

  final AuthenticationRepository authenticationRepository;

  // funcion pubkica para guardar los datos del usuario
  void setEmployee(Employee employee) {
    state = employee;
  }
}
