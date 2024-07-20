// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/* PreferredSize getAppbar(fondo) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(0),
    child: AppBar(
      elevation: 0,
      backgroundColor: fondo,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
  );
} */
PreferredSize getAppbar(fondo) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(0),
    child: AppBar(
      elevation: 0,
      backgroundColor: fondo,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );
}
