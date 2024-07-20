// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';

class CustomAppBarLinks extends StatelessWidget {
  const CustomAppBarLinks({
    Key? key,
    this.title = '',
    this.action = false,
    this.actionIcon = 'filter_icon.svg',
    this.iconColor = primary,
    this.backgroundColor = fondoColor,
    this.brightness,
    this.funcion,
    this.colorAppBar = primary,
  }) : super(key: key);

  final String title;
  final bool action;
  final String actionIcon;
  final Color iconColor;
  final Color backgroundColor;
  final Brightness? brightness;
  final void Function()? funcion;
  final Color colorAppBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // brightness: brightness,
      backgroundColor: backgroundColor,
      elevation: 0.0,
      // indicador de atras
      automaticallyImplyLeading: false,
      primary: false,
      excludeHeaderSemantics: true,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(10.0),
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: colorAppBar),
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        assetImg + 'arrow_left_icon.svg',
                        color: colorAppBar,
                        width: 8,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      color: colorAppBar,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                  Spacer(),
                  (action)
                      ? GestureDetector(
                          onTap: funcion,
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(100.0),
                              boxShadow: [
                                BoxShadow(
                                  color: bgActions.withOpacity(0.5),
                                  spreadRadius: 0.0,
                                  blurRadius: 4.0,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              assetImg + actionIcon,
                              width: 20,
                              color: textColor,
                            ),
                          ),
                        )
                      : SizedBox(
                          width: 40.0,
                          height: 40.0,
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBarEmployee extends StatelessWidget {
  const CustomAppBarEmployee({
    Key? key,
    this.title = '',
    this.action = false,
    this.action2 = true,
    this.actionIcon = 'filter_icon.svg',
    this.actionIcon2 = 'filter_icon.svg',
    this.iconColor = primary,
    this.backgroundColor = background,
    this.brightness,
    this.funcion,
    this.funcion2,
  }) : super(key: key);

  final String title;
  final bool action;
  final bool action2;
  final String actionIcon;
  final String actionIcon2;
  final Color iconColor;
  final Color backgroundColor;
  final Brightness? brightness;
  final void Function()? funcion;
  final void Function()? funcion2;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // brightness: brightness,
      backgroundColor: fondoColor,
      elevation: 0.0,
      // indicador de atras
      automaticallyImplyLeading: false,
      primary: false,
      excludeHeaderSemantics: true,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(100.0),
                    onTap: funcion2,
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(100.0),
                        boxShadow: [
                          BoxShadow(
                            color: primary.withOpacity(0.5),
                            spreadRadius: 0.0,
                            blurRadius: 4.0,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        assetImg + actionIcon2,
                        color: textWhite,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                  Spacer(),
                  (action)
                      ? GestureDetector(
                          onTap: funcion,
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(100.0),
                              boxShadow: [
                                BoxShadow(
                                  color: primary.withOpacity(0.5),
                                  spreadRadius: 0.0,
                                  blurRadius: 4.0,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              assetImg + actionIcon,
                              width: 20,
                              color: textWhite,
                            ),
                          ),
                        )
                      : SizedBox(
                          width: 50.0,
                          height: 50.0,
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBarLinks2 extends StatelessWidget {
  const CustomAppBarLinks2({
    Key? key,
    this.title = '',
    this.action = false,
    this.actionIcon = 'filter_icon.svg',
    this.iconColor = primary,
    this.backgroundColor = background,
    this.brightness,
    this.funcion,
  }) : super(key: key);

  final String title;
  final bool action;
  final String actionIcon;
  final Color iconColor;
  final Color backgroundColor;
  final Brightness? brightness;
  final void Function()? funcion;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // brightness: brightness,
      backgroundColor: fondoColor,
      elevation: 0.0,
      // indicador de atras
      automaticallyImplyLeading: false,
      primary: false,
      excludeHeaderSemantics: true,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 40.0,
                    width: 40.0,
                  ),
                  const Spacer(),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                    ),
                  ),
                  const Spacer(),
                  (action)
                      ? InkWell(
                          borderRadius: BorderRadius.circular(100),
                          onTap: funcion,
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              // color: bgActions,
                              color: primary,
                              borderRadius: BorderRadius.circular(100.0),
                              boxShadow: [
                                BoxShadow(
                                  color: bgActions.withOpacity(0.5),
                                  spreadRadius: 0.0,
                                  blurRadius: 4.0,
                                  offset: const Offset(0, 2),
                                )
                              ],
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              assetImg + actionIcon,
                              width: 20,
                              // color: textColor,
                              color: textWhite,
                            ),
                          ),
                        )
                      : const SizedBox(
                          width: 40.0,
                          height: 40.0,
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
