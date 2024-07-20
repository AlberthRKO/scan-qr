import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/presentation/global/controllers/theme_controller.dart';
import 'package:qr_scan/app/presentation/global/theme/theme_dark.dart';
import 'package:qr_scan/app/presentation/global/theme/theme_light.dart';

import 'presentation/routes/app_routes.dart';
import 'presentation/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = context.watch();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* title: 'Flutter Demo',
      home: const Login(), */
      theme: themeController.darkMode ? dark : light,
      /* theme: ThemeData(
        fontFamily: 'Epilogue',
        brightness: Brightness.light,
        dropdownMenuTheme: const DropdownMenuThemeData(
          textStyle: TextStyle(
            fontFamily: 'Epilogue',
          ),
        ),
        
        appBarTheme: const AppBarTheme(
          backgroundColor: primary,
        ),
        colorScheme: const ColorScheme.light(primary: primary)
            .copyWith(background: fondoColor)
            .copyWith(
              error: const Color(0xFFE84D4F),
            )
            .copyWith(background: primary),
      ), */
      initialRoute: Routes.splash,
      routes: appRoutes,
    );
  }
}
