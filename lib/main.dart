// import 'package:dashboard/providers/dash_services.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:qr_scan/app/data/repositories_impl/dashboard_repository_impl.dart';
import 'package:qr_scan/app/data/repositories_impl/employee_repository_impl.dart';
import 'package:qr_scan/app/data/repositories_impl/list_employee_repository_impl.dart';
import 'package:qr_scan/app/data/repositories_impl/menu_setup_repository_impl.dart';
import 'package:qr_scan/app/data/repositories_impl/reports_repository_impl.dart';
import 'package:qr_scan/app/data/repositories_impl/restaurant_access_repository_impl.dart';
import 'package:qr_scan/app/data/repositories_impl/system_repository_impl.dart';
import 'package:qr_scan/app/data/services/local/network_services.dart';
import 'package:qr_scan/app/data/services/remote/dashboard_api.dart';
import 'package:qr_scan/app/data/services/remote/employee_api.dart';
import 'package:qr_scan/app/data/services/remote/list_employee_api.dart';
import 'package:qr_scan/app/data/services/remote/menu_setup_api.dart';
import 'package:qr_scan/app/data/services/remote/reports_api.dart';
import 'package:qr_scan/app/data/services/remote/restaurant_api.dart';
import 'package:qr_scan/app/data/services/remote/system_setup.dart';
import 'package:qr_scan/app/domain/repositories/dashboard_repository.dart';
import 'package:qr_scan/app/domain/repositories/employee_repository.dart';
import 'package:qr_scan/app/domain/repositories/list_employee_repository.dart';
import 'package:qr_scan/app/domain/repositories/menu_setup_repository.dart';
import 'package:qr_scan/app/domain/repositories/reports_repository.dart';
import 'package:qr_scan/app/domain/repositories/restaunrant_access_repository.dart';
import 'package:qr_scan/app/domain/repositories/system_repository.dart';
import 'package:qr_scan/app/presentation/global/controllers/theme_controller.dart';

import 'app/data/http/http.dart';
import 'app/data/repositories_impl/account_repository_impl.dart';
import 'app/data/repositories_impl/authentication_repository_impl.dart';
import 'app/data/repositories_impl/connectivity_repository_impl.dart';
import 'app/data/services/local/token_services.dart';
import 'app/data/services/remote/account_api.dart';
import 'app/data/services/remote/authentication_api.dart';
import 'app/data/services/remote/internet_checker.dart';
import 'app/domain/repositories/account_repository.dart';
import 'app/domain/repositories/authentication_repository.dart';
import 'app/domain/repositories/connectivity_repository.dart';
import 'app/my_app.dart';
import 'app/presentation/global/session_controller.dart';

void main() async {
  // como mandamos mas de una ves el token y el http creamos variables
  final tokenServices = TokenServices(
    const FlutterSecureStorage(),
  );
  final ipServer = IpServices(
    const FlutterSecureStorage(),
  );
  final restaurant = RestaurantServices(
    const FlutterSecureStorage(),
  );
  final restaurantId = RestaurantIdServices(
    const FlutterSecureStorage(),
  );
  final user = UserServices(
    const FlutterSecureStorage(),
  );
  final passUser = PassUserServices(
    const FlutterSecureStorage(),
  );
  final httpServices = Http(
    // baseUrl: 'http://135.148.2.76:8081',
    ipServer,
    baseUrl: "http://23.142.24.108:8081",
    client: http.Client(),
  );
  /* Http httpServices;
  // Obtener la dirección IP almacenada
  final ipAddress = await ipServer.ipServer;

  if (ipAddress != null) {
    httpServices = Http(
      baseUrl: ipAddress, // Construir la URL base con la dirección IP
      client: http.Client(),
    );

    // Aquí puedes usar httpServices para hacer solicitudes a la API
  } else {
    httpServices = Http(
      baseUrl: "ipAddress", // Construir la URL base con la dirección IP
      client: http.Client(),
    );
  } */

  // hacemos que el injector sea nuestro widget padre
  runApp(
    MultiProvider(
      providers: [
        Provider<AccounteRepository>(
          create: (_) => AccounteRepositoryImpl(
            AccountAPI(
              httpServices,
            ),
            tokenServices,
          ),
        ),
        Provider<ConnectivyRespository>(
          create: (_) => ConnectivyRespositoryImpl(
            Connectivity(),
            InternetChecker(),
          ),
        ),
        Provider<AuthenticationRepository>(
          create: (_) => AuthenticationRepositoryImpl(
            AuthenticationApi(
              httpServices,
            ),
            tokenServices,
            ipServer,
            AccountAPI(
              httpServices,
            ),
            user,
            passUser,
          ),
        ),
        Provider<ListEmployeeRepository>(
          create: (_) => ListEmployeeRepositoryImpl(
            tokenServices,
            ListEmployeeApi(httpServices),
          ),
        ),
        Provider<RestaurantAccessRepository>(
          create: (_) => RestaurantAccessRepositoryImpl(
            tokenServices,
            RestaurantApi(httpServices),
            AccountAPI(httpServices),
            restaurant,
            restaurantId,
          ),
        ),
        Provider<EmployeeRepository>(
          create: (_) => EmployeeRepositoryImpl(
            tokenServices,
            EmployeeApi(httpServices),
          ),
        ),
        Provider<MenuSetupRepository>(
          create: (_) => MenuSetupRepositoryImpl(
            tokenServices,
            MenuSetupApi(httpServices),
          ),
        ),
        Provider<DashboardRepository>(
          create: (_) => DashboardRepositoryImpl(
            tokenServices,
            DashboardAPi(httpServices),
          ),
        ),
        Provider<ReportsRepository>(
          create: (_) => ReportsRepositoryImpl(
            tokenServices,
            ReportsApi(httpServices),
          ),
        ),
        Provider<SystemRepository>(
          create: (_) => SystemRepositoryImpl(
            tokenServices,
            SystemSetupApi(httpServices),
          ),
        ),
        ChangeNotifierProvider<SessionController>(
          create: (_) => SessionController(
            authenticationRepository: _.read(),
          ),
        ),
        ChangeNotifierProvider<ThemeController>(
          create: (_) => ThemeController(false),
        ),
        ChangeNotifierProvider<RestaurantController>(
          create: (_) => RestaurantController(
            authenticationRepository: _.read(),
          ),
        ),
        ChangeNotifierProvider<UserPassController>(
          create: (_) => UserPassController(
            authenticationRepository: _.read(),
          ),
        ),
        ChangeNotifierProvider<EmployeeSessionPinController>(
          create: (_) => EmployeeSessionPinController(
            authenticationRepository: _.read(),
          ),
        ),
        StreamProvider(
          create: (context) => NetworkServices().controller.stream,
          initialData: NetworkStatus.online,
        ),
      ],
      child: const MyApp(),
    ),
  );
  // runApp(const MyApp());
}
