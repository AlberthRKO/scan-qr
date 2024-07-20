import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';

ThemeData light = ThemeData(
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
);
