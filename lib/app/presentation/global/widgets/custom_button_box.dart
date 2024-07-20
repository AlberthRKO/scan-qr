import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';

import '../theme/colors.dart';

class CustomButtonBox extends StatelessWidget {
  const CustomButtonBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 45.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: primary.withOpacity(0.7),
        color: primary,
        borderRadius: BorderRadius.circular(17.5),
        boxShadow: [
          BoxShadow(
            color: primary.withOpacity(0.8),
            spreadRadius: 0.0,
            blurRadius: 6.0,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: textWhite,
        ),
      ),
    );
  }
}

class CustomButtonBoxDelete extends StatelessWidget {
  const CustomButtonBoxDelete({
    Key? key,
    required this.title,
    this.typeCancel = true,
  }) : super(key: key);

  final String title;
  final bool typeCancel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .3,
      height: 40.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: typeCancel ? textWhite : deleteColor.withOpacity(1),
        borderRadius: BorderRadius.circular(15.0),
        border: typeCancel
            ? Border.all(color: deleteColor.withOpacity(.7), width: 1)
            : null,
        boxShadow: [
          typeCancel
              ? const BoxShadow()
              : BoxShadow(
                  color: deleteColor.withOpacity(0.5),
                  spreadRadius: 0.0,
                  blurRadius: 6.0,
                  offset: const Offset(0, 2),
                )
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
          color: typeCancel ? deleteColor : textWhite,
        ),
      ),
    );
  }
}

class CustomButtonBoxCrud extends StatelessWidget {
  const CustomButtonBoxCrud({
    Key? key,
    required this.title,
    this.color = textWhite,
    this.typeCancel = true,
    this.titleColor = textWhite,
    this.option = false,
    this.sizeWidth = 0,
    this.icon = "eye.svg",
    this.iconActive = false,
  }) : super(key: key);

  final String title;
  final Color color;
  final bool typeCancel;
  final Color titleColor;
  final bool option;
  final double sizeWidth;
  final bool iconActive;
  final String icon;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: sizeWidth == 0 ? size.width * .4 : sizeWidth,
      height: 40.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: typeCancel ? textWhite : color.withOpacity(1),
        borderRadius: BorderRadius.circular(15.0),
        border: typeCancel
            ? Border.all(color: deleteColor.withOpacity(.7), width: 1)
            : option
                ? Border.all(color: titleColor.withOpacity(.7), width: 1)
                : null,
        boxShadow: [
          typeCancel
              ? const BoxShadow()
              : BoxShadow(
                  color: color.withOpacity(0.5),
                  spreadRadius: 0.0,
                  blurRadius: 6.0,
                  offset: const Offset(0, 2),
                )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconActive == false
              ? Container()
              : SvgPicture.asset(
                  '$assetImg$icon',
                  color: textWhite,
                  width: 18.0,
                ),
          iconActive == false
              ? Container()
              : const SizedBox(
                  width: 10,
                ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: typeCancel ? deleteColor : titleColor,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButtonBoxStyle extends StatelessWidget {
  const CustomButtonBoxStyle({
    Key? key,
    required this.title,
    this.color = primary,
    this.typeCancel = true,
    this.titleColor = textWhite,
    this.option = false,
    this.sizeWidth = 0,
    this.sizeHeight = 40,
    this.icon = "eye.svg",
    this.iconColor = textWhite,
    this.iconActive = false,
    this.funcion,
    this.fontSize = 16,
  }) : super(key: key);

  final String title;
  final Color color;
  final bool typeCancel;
  final Color titleColor;
  final bool option;
  final double fontSize;
  final double sizeWidth;
  final double sizeHeight;
  final bool iconActive;
  final String icon;
  final Color iconColor;
  final void Function()? funcion;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: funcion,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: sizeWidth == 0 ? size.width * .4 : sizeWidth,
        height: sizeHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 0.0,
              blurRadius: 6.0,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconActive == false
                ? Container()
                : SvgPicture.asset(
                    '$assetImg$icon',
                    color: titleColor,
                    width: fontSize + 2,
                  ),
            iconActive == false
                ? Container()
                : const SizedBox(
                    width: 10,
                  ),
            Text(
              title,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtonBoxCircleStyle extends StatelessWidget {
  const CustomButtonBoxCircleStyle({
    Key? key,
    required this.title,
    this.color = primary,
    this.typeCancel = true,
    this.titleColor = textWhite,
    this.option = false,
    this.sizeWidth = 0,
    this.icon = "eye.svg",
    this.iconColor = textWhite,
    this.iconActive = false,
    this.funcion,
    this.fontSize = 16,
    this.sizeIcon = 18,
  }) : super(key: key);

  final String title;
  final Color color;
  final bool typeCancel;
  final Color titleColor;
  final bool option;
  final double sizeIcon;
  final double fontSize;
  final double sizeWidth;
  final bool iconActive;
  final String icon;
  final Color iconColor;
  final void Function()? funcion;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: funcion,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: sizeWidth == 0 ? size.width * .4 : sizeWidth,
        height: sizeWidth,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 0.0,
              blurRadius: 15.0,
              offset: const Offset(0, 8),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconActive == false
                ? Container()
                : SvgPicture.asset(
                    '$assetImg$icon',
                    color: titleColor,
                    width: sizeIcon,
                  ),
            iconActive == false
                ? Container()
                : const SizedBox(
                    width: 10,
                  ),
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
