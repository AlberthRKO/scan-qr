import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/home/home.dart';
import 'package:qr_scan/app/presentation/home/home_scan.dart';
import 'package:qr_scan/app/presentation/pages/dashboard_setup/system/system.dart';
import 'package:qr_scan/app/presentation/pages/dashboard_setup/users/users.dart';
import 'package:qr_scan/app/presentation/pages/employee_access/employee_access.dart';
import 'package:qr_scan/app/presentation/pages/home_admin/home_admin.dart';
import 'package:qr_scan/app/presentation/pages/pdf/pdf_view.dart';
import 'package:qr_scan/app/presentation/pages/read_qr/read_qr.dart';

import '../pages/login/login.dart';
import '../pages/offline/offline.dart';
import '../pages/splash/splashView.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => const SplashView(),
    Routes.viewPDF: (context) => ViewPDF(
          args: ModalRoute.of(context)?.settings.arguments
              as Map<String, dynamic>?,
        ),
    Routes.accessEmployee: (context) => EmployeeAccess(),
    Routes.homeQR: (context) => const HomeQR(),
    Routes.homeScam: (context) => const HomeScan(),
    Routes.login: (context) => const Login(),
    Routes.homeAdmin: (context) => const HomeAdmin(),
    Routes.readQr: (context) => const ReadQR(),
    Routes.users: (context) => const Users(),
    Routes.systems: (context) => const System(),
    Routes.offline: (context) => const Offline(),
  };
}
