// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
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
                  GestureDetector(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: bgActions,
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
                        assetImg + 'menu.svg',
                        color: textColor,
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
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: bgActions,
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
