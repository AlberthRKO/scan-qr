// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';

class CardTableLock extends StatelessWidget {
  const CardTableLock({
    super.key,
    this.onTapDelete,
    required this.name,
    required this.id,
  });

  final String name;
  final int id;
  final void Function()? onTapDelete;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Host: ",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    id.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name: ",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapDelete,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: deleteColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: deleteColor.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'deleteIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardEmail extends StatelessWidget {
  const CardEmail({
    super.key,
    required this.email,
    required this.host,
    required this.encryption,
    required this.port,
    this.onTapEdit,
    this.onTapDelete,
  });

  final String email;
  final String host;
  final bool encryption;
  final int port;
  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            email == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          email,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            email == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Host: ",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    host,
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "Encryption: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        encryption.toString(),
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Epilogue",
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "Port: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        port.toString(),
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Epilogue",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            /* SizedBox(
              height: 5,
            ), */
            /* Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapEdit,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'editIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: onTapDelete,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: deleteColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: deleteColor.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'deleteIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}

class CardRestaurantHours extends StatelessWidget {
  const CardRestaurantHours({
    super.key,
    required this.name,
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
    this.onTapEdit,
  });

  final String name;
  final int startHour;
  final int startMinute;
  final int endHour;
  final int endMinute;
  final void Function()? onTapEdit;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dia: ",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "Start Hour: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$startHour am",
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Epilogue",
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "Start Minute: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$startMinute min",
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Epilogue",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "End Hour: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$endHour pm",
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Epilogue",
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "End Minute: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$endMinute min",
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Epilogue",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            /* SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapEdit,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'editIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}

class CardPrint extends StatelessWidget {
  const CardPrint({
    super.key,
    required this.port,
    this.onTapEdit,
    this.onTapDelete,
    this.name = "",
    required this.ip,
    required this.type,
  });

  final String name;
  final String ip;
  final String type;
  final String port;
  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            name == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            name == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            port == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Port: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          port,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            port == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            ip == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "IP: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          ip,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            ip == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            type == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Type: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          type,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            /* type == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapEdit,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'editIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: onTapDelete,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: deleteColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: deleteColor.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'deleteIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}

class CardPass extends StatelessWidget {
  const CardPass({
    super.key,
    this.onTapEdit,
    this.onTapDelete,
    required this.p,
    required this.longp,
  });

  final String p;
  final String longp;
  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Row(
              children: [
                p == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                p,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                longp == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Long: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                longp,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
              ],
            ),
            /* SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapEdit,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'editIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: onTapDelete,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: deleteColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: deleteColor.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'deleteIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}

class CardComputer extends StatelessWidget {
  const CardComputer({
    super.key,
    this.onTapEdit,
    this.onTapDelete,
    required this.ip,
    required this.isServer,
  });

  final String ip;
  final String isServer;
  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ip == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "IP: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                ip,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                isServer == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "IsServer: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                isServer,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
              ],
            ),
            /* SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapEdit,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'editIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: onTapDelete,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: deleteColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: deleteColor.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'deleteIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}

class CardPinChange extends StatelessWidget {
  const CardPinChange({
    super.key,
    required this.name,
    required this.tiempo,
    this.title = "Current Employee",
    this.centro = false,
  });

  final String name;
  final String title;
  final String tiempo;
  final bool centro;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment:
                  centro ? MainAxisAlignment.center : MainAxisAlignment.start,
              crossAxisAlignment:
                  centro ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                Text(
                  "$title : ",
                  style: TextStyle(
                    fontSize: centro ? 16 : 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: centro ? 16 : 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                      fontWeight: centro ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment:
                  centro ? MainAxisAlignment.center : MainAxisAlignment.start,
              crossAxisAlignment:
                  centro ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  assetImg + 'clock.svg',
                  color: textColor,
                  width: 16.0,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Time : ",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    tiempo,
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardUserActual extends StatelessWidget {
  const CardUserActual({
    super.key,
    required this.name,
    this.title = "Current Employee",
    this.centro = false,
  });

  final String name;
  final String title;
  final bool centro;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment:
                  centro ? MainAxisAlignment.center : MainAxisAlignment.start,
              crossAxisAlignment:
                  centro ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                Text(
                  "$title : ",
                  style: TextStyle(
                    fontSize: centro ? 16 : 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: centro ? 16 : 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                      fontWeight: centro ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardPasswordOnline extends StatelessWidget {
  const CardPasswordOnline({
    super.key,
    this.onTapEdit,
    this.onTapDelete,
    required this.ip,
  });

  final String ip;
  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "IP: ",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    ip,
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ),
              ],
            ),
            /* SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapEdit,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'editIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: onTapDelete,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: deleteColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: deleteColor.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'deleteIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}

class CardSuperRestaurant extends StatelessWidget {
  const CardSuperRestaurant({
    super.key,
    this.onTapEdit,
    this.onTapDelete,
    required this.restaurantName,
    required this.city,
    required this.state,
    required this.addresslinE1,
    required this.zip,
    required this.phoneAreaCode,
    required this.phone,
    required this.taxRate,
    required this.uploadHost,
    required this.m,
    required this.mip,
    required this.email,
    required this.website,
  });

  final String restaurantName;
  final String city;
  final String state;
  final String addresslinE1;
  final String zip;
  final String phoneAreaCode;
  final String phone;
  // final String faxAreaCode;
  // final String fax;
  // final int minimumDeliveryAmount;
  final String email;
  final String website;
  // final String foodCategory;
  // final String description;
  // final String password;
  final int taxRate;
  // final bool acceptCheck;
  // final bool visa;
  // final bool masterCard;
  // final bool amex;
  // final bool discover;
  // final int gratuity;
  // final int deliveryCharge;
  // final int advanceNotice;
  // final int printNumber;
  // final int deliveryComission;
  // final int deliveryRestaurantId;
  // final String expired;
  // final String emailServer;
  final String uploadHost;
  // final int firstOrderDiscount;
  // final int cutoffHour;
  // final String country;
  // final int deliveryChargePercentage;
  // final int numberofCompliment;
  // final int numberofComplaint;

  final int m;
  final int mip;

  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Restaurant: ",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    restaurantName,
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                city == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "City: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                city,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                state == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "State: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                state,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            addresslinE1 == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          addresslinE1,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            addresslinE1 == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              children: [
                zip == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Zip: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                zip,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                phoneAreaCode == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Area Code: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                phoneAreaCode,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                phone == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                phone,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                Flexible(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tax Rate: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          taxRate.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            email == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          email,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            email == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            website == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WebSite: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          website,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            website == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            uploadHost == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upload Host: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          uploadHost,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            uploadHost == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "M: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          m.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mip: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          mip.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            /*  SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapEdit,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'editIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: onTapDelete,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: deleteColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: deleteColor.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'deleteIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}

// Section Menu Setup CardMenulist

class CardMenuList extends StatelessWidget {
  const CardMenuList({
    super.key,
    required this.name,
    required this.description,
    required this.carryOut,
    required this.special,
    required this.displaySequence,
    required this.cSize,
    required this.active,
    this.onTapEdit,
    this.onTapDelete,
  });

  final String name;
  final String description;
  final String carryOut;
  final String special;
  final int displaySequence;
  final int cSize;
  final bool active;
  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            name == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            name == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              children: [
                carryOut == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Carry Out: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                carryOut,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                special == ""
                    ? Container()
                    : Flexible(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Special: ",
                              style: TextStyle(
                                fontSize: 12,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Epilogue",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                special,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textBlack,
                                  fontFamily: "Epilogue",
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
              ],
            ),
            (carryOut == "" && special == "")
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Display Sequence: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          displaySequence.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "C Size: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          cSize.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Active: ",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Epilogue",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    active.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            description == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description: ",
                        style: TextStyle(
                          fontSize: 12,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Epilogue",
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          description,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            /* description == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onTapEdit,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: primary.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'editIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: onTapDelete,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: deleteColor.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: deleteColor.withOpacity(0.5),
                          spreadRadius: 0.0,
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetImg + 'deleteIcon.svg',
                      color: textWhite,
                      width: 13.0,
                    ),
                  ),
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}
