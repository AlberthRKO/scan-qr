import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';

ThemeData dark = ThemeData(
  fontFamily: 'Epilogue',
  brightness: Brightness.dark,
  dropdownMenuTheme: const DropdownMenuThemeData(
    textStyle: TextStyle(
      fontFamily: 'Epilogue',
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: esam,
  ),
  colorScheme: const ColorScheme.dark(primary: esam)
      .copyWith(background: fondoColor)
      .copyWith(
        error: const Color(0xFFE84D4F),
      )
      .copyWith(background: esam),
);
