// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';

class TotalCard extends StatelessWidget {
  const TotalCard({
    super.key,
    required this.cantidad,
    required this.title,
    this.centro = false,
  });

  final double cantidad;
  final String title;
  final bool centro;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17.5),
        boxShadow: [
          BoxShadow(
            color: primary.withOpacity(.1),
            blurRadius: 32,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment:
            centro ? CrossAxisAlignment.center : CrossAxisAlignment.end,
        mainAxisAlignment:
            centro ? MainAxisAlignment.center : MainAxisAlignment.end,
        children: [
          Text(
            title,
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
            double.parse(cantidad.toStringAsFixed(2)).toString(),
            style: TextStyle(
              fontSize: 12,
              color: textBlack,
              fontWeight: FontWeight.bold,
              fontFamily: "Epilogue",
            ),
          ),
        ],
      ),
    );
  }
}

class TotalCard2 extends StatelessWidget {
  const TotalCard2({
    super.key,
    required this.cantidad,
    required this.title,
    this.centro = false,
  });

  final String cantidad;
  final String title;
  final bool centro;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: size.width,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: primary.withOpacity(.1),
            blurRadius: 32,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment:
            centro ? CrossAxisAlignment.center : CrossAxisAlignment.center,
        mainAxisAlignment:
            centro ? MainAxisAlignment.center : MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: textWhite,
              fontWeight: FontWeight.bold,
              fontFamily: "Epilogue",
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            cantidad,
            style: TextStyle(
              fontSize: 14,
              color: textWhite,
              fontWeight: FontWeight.bold,
              fontFamily: "Epilogue",
            ),
          ),
        ],
      ),
    );
  }
}

class CardHead extends StatelessWidget {
  const CardHead({
    super.key,
    required this.title1,
    required this.title2,
  });

  final String title1;
  final String title2;

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title1,
              style: TextStyle(
                fontSize: 12,
                color: textColor,
                fontWeight: FontWeight.bold,
                fontFamily: "Epilogue",
              ),
            ),
            Text(
              title2,
              style: TextStyle(
                fontSize: 12,
                color: textColor,
                fontWeight: FontWeight.bold,
                fontFamily: "Epilogue",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardEmployeeShift extends StatelessWidget {
  const CardEmployeeShift({
    super.key,
    required this.employee,
    required this.hours,
    required this.todayCash,
    required this.totalSales,
    required this.totalTips,
  });

  final int employee;
  final int hours;
  final double todayCash;
  final double totalSales;
  final double totalTips;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Employe",
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontWeight: FontWeight.bold,
                fontFamily: "Epilogue",
              ),
            ),
            Text(
              employee.toString(),
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontFamily: "Epilogue",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hours",
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontWeight: FontWeight.bold,
                fontFamily: "Epilogue",
              ),
            ),
            Text(
              hours.toString(),
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontFamily: "Epilogue",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Today Cash - Tips + Fee",
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontWeight: FontWeight.bold,
                fontFamily: "Epilogue",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetImgSkills + 'dollar.svg',
                  color: textColor,
                  width: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  todayCash.toStringAsFixed(2).toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: textBlack,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Epilogue",
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Sales + Tax",
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontWeight: FontWeight.bold,
                fontFamily: "Epilogue",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetImgSkills + 'dollar.svg',
                  color: textColor,
                  width: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  totalSales.toStringAsFixed(2).toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: textBlack,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Epilogue",
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Tips Cash + Card + Acct",
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontWeight: FontWeight.bold,
                fontFamily: "Epilogue",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetImgSkills + 'dollar.svg',
                  color: textColor,
                  width: 12,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  totalTips.toStringAsFixed(2).toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: textBlack,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Epilogue",
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class CardOrderType extends StatelessWidget {
  const CardOrderType({
    super.key,
    required this.dineQty,
    required this.dineAmount,
    required this.pickQty,
    required this.pickAmount,
    required this.carryQty,
    required this.carryAmount,
    required this.deliQty,
    required this.deliAmount,
    required this.onlineQty,
    required this.onlineAmount,
    required this.totalQty,
    required this.totalAmount,
  });

  final int dineQty;
  final double dineAmount;
  final int pickQty;
  final double pickAmount;
  final int carryQty;
  final double carryAmount;
  final int deliQty;
  final double deliAmount;
  final int onlineQty;
  final double onlineAmount;
  final int totalQty;
  final double totalAmount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Type",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Qty",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          color: textColor,
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Dine-In",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dineQty.toString(),
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
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    dineAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Pick-Up",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    pickQty.toString(),
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
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    pickAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Carry-Out",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    carryQty.toString(),
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
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    carryAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Delivery",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    deliQty.toString(),
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
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    deliAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Online",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    onlineQty.toString(),
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
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    onlineAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          color: textColor,
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    totalQty.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    totalAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardSalesByCard extends StatelessWidget {
  const CardSalesByCard({
    super.key,
    required this.visaQty,
    required this.visaAmount,
    required this.masterQty,
    required this.masterAmount,
    required this.americaQty,
    required this.americaAmount,
    required this.discoveryQty,
    required this.discoveryAmount,
    required this.totalQty,
    required this.totalAmount,
  });

  final int visaQty;
  final double visaAmount;
  final int masterQty;
  final double masterAmount;
  final int americaQty;
  final double americaAmount;
  final int discoveryQty;
  final double discoveryAmount;
  final int totalQty;
  final double totalAmount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Card",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Qty",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          color: textColor,
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Visa",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    visaQty.toString(),
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
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    visaAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Master Card",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    masterQty.toString(),
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
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    masterAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "America Express",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    americaQty.toString(),
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
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    americaAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Discovery",
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    discoveryQty.toString(),
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
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    discoveryAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          color: textColor,
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    totalQty.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    assetImgSkills + 'dollar.svg',
                    color: textColor,
                    width: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    totalAmount.toStringAsFixed(2).toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: textBlack,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardGift extends StatelessWidget {
  const CardGift({
    super.key,
    required this.balance,
    required this.track,
  });

  final double balance;
  final String track;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              track,
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontFamily: "Epilogue",
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              balance.toString(),
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontFamily: "Epilogue",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
