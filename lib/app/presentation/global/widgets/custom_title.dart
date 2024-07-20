// import 'dart:ui';

// import 'package:elearningui/theme/padding.dart';
import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
    required this.title,
    this.route = '/404',
    this.extend = true,
    this.fontSize = 10.0,
    this.centro = false,
    this.arg,
  }) : super(key: key);

  final String title;
  final String route;
  final bool centro;
  final bool extend;
  final double fontSize;
  // ignore: prefer_typing_uninitialized_variables
  final arg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          centro ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Epilogue",
              color: secondary,
              fontSize: fontSize,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        (extend)
            ? GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(
                  //   context,
                  //   route,
                  //   arguments: arg,
                  // );
                },
                child: Text(
                  'Ver todo',
                  style: TextStyle(
                      color: primary,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400),
                ),
              )
            : Container(),
      ],
    );
  }
}
