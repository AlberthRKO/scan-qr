// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';

class CardReport extends StatelessWidget {
  const CardReport({
    super.key,
    required this.employeename,
    required this.quantity,
    required this.amount,
    required this.type,
    required this.note,
    required this.content,
    required this.time,
    required this.itemName,
  });

  final String employeename;
  final int quantity;
  final double amount;
  final String type;
  final String note;
  final String content;
  final String time;
  final String itemName;

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
                Flexible(
                  flex: 7,
                  child: Row(
                    children: [
                      Text(
                        "Employee: ",
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
                        employeename,
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
                  flex: 3,
                  child: Row(
                    children: [
                      Text(
                        "Quantity: ",
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
                        quantity.toString(),
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
                Text(
                  "Item Name: ",
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
                  itemName,
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
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
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
                      Text(
                        type,
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
                        "Amount: ",
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
                        amount.toString(),
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
                Text(
                  "Time: ",
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
                  time,
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
              children: [
                Text(
                  "Note: ",
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
                  note,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Content: ",
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
                    content,
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

class CardDeleteTrack extends StatelessWidget {
  const CardDeleteTrack({
    super.key,
    required this.employeename,
    required this.amount,
    this.note = '',
    required this.fecha,
    required this.content,
  });

  final String employeename;
  final double amount;
  final String fecha;
  final String note;
  final String content;

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
                Text(
                  "Employee: ",
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
                  employeename,
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
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "Fecha: ",
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
                        fecha,
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
                        "Amount: ",
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
                        amount.toString(),
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
            note == ""
                ? Container()
                : Row(
                    children: [
                      Text(
                        "Note: ",
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
                        note,
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Epilogue",
                        ),
                      ),
                    ],
                  ),
            note == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Content: ",
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
                    content,
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

class CardDiscount extends StatelessWidget {
  const CardDiscount({
    super.key,
    required this.employeename,
    required this.amount,
    this.note = '',
    required this.fecha,
  });

  final String employeename;
  final double amount;
  final String fecha;
  final String note;

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
                Text(
                  "Employee: ",
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
                  employeename,
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
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "Fecha: ",
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
                        fecha,
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
                        "Discount: ",
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
                        amount.toString(),
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
            note == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Content: ",
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
                          note,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            note == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
          ],
        ),
      ),
    );
  }
}

class CardCoupon extends StatelessWidget {
  const CardCoupon({
    super.key,
    required this.name,
    required this.amount,
    required this.percent,
    this.conditions = "",
    required this.fecha,
    this.description = "",
    this.code = "",
  });

  final String name;
  final double amount;
  final double percent;
  final String conditions;
  final String fecha;
  final String description;
  final String code;

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
            code == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            code == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Code: ",
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
                          code,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            conditions == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            conditions == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Conditions: ",
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
                          conditions,
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
                  "Expiration Date: ",
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
                    fecha,
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
                        "Amount: ",
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
                        amount.toString(),
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
                        "Percent: ",
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
                        percent.toString(),
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
            description == ""
                ? Container()
                : SizedBox(
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
          ],
        ),
      ),
    );
  }
}

// seccion de employeeSchedule
class CardEmployeeSchedule extends StatelessWidget {
  const CardEmployeeSchedule({
    super.key,
    required this.day,
    required this.startHour,
    this.onTapEdit,
    this.onTapDelete,
    required this.employee,
    required this.startMinute,
    required this.startHour2,
    required this.startMinute2,
    required this.endHour,
    required this.endMinute,
    required this.endHour2,
    required this.endMinute2,
  });

  final String employee;
  final String day;
  final int startHour;
  final int startMinute;
  final int startHour2;
  final int startMinute2;
  // final int startAmPm;
  final int endHour;
  final int endMinute;
  final int endHour2;
  final int endMinute2;
  // final int endAmPm;
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
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      Text(
                        "Employee: ",
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
                        employee,
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
                        "Day : ",
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
                        day.toString(),
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
                        startHour.toString(),
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
                        startMinute.toString(),
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
                        endHour.toString(),
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
                        endMinute.toString(),
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
                        "Start Hour 2: ",
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
                        startHour2.toString(),
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
                        "Start Minute 2: ",
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
                        startMinute2.toString(),
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
                        "End Hour 2: ",
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
                        endHour2.toString(),
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
                        "End Minute 2: ",
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
                        endMinute2.toString(),
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
              height: 10,
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
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class CardCreditCard extends StatelessWidget {
  const CardCreditCard({
    super.key,
    required this.timeString,
    required this.dayId,
    required this.authAmount,
    required this.gratuity,
    required this.acctno,
    required this.authCode,
    required this.expDate,
    required this.cardType,
    required this.type,
    this.customerName = "",
    required this.computerName,
    required this.textResponse,
  });

  final String timeString;
  final int dayId;
  final double authAmount;
  final double gratuity;
  final String acctno;
  final String authCode;
  final String expDate;
  final String cardType;
  final String type;
  final String customerName;
  final String computerName;
  final String textResponse;

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
            customerName == ""
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Customer Name: ",
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
                          customerName,
                          style: TextStyle(
                            fontSize: 12,
                            color: textBlack,
                            fontFamily: "Epilogue",
                          ),
                        ),
                      ),
                    ],
                  ),
            customerName == ""
                ? Container()
                : SizedBox(
                    height: 5,
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Time String: ",
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
                    timeString,
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
                  flex: 4,
                  child: Row(
                    children: [
                      Text(
                        "Day ID: ",
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
                        dayId.toString(),
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
                  flex: 6,
                  child: Row(
                    children: [
                      Text(
                        "Authorize Amount: ",
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
                        authAmount.toString(),
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
                        "Gratuity: ",
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
                        gratuity.toString(),
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
                        "Acctno: ",
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
                        acctno,
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
                        "Auth Code: ",
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
                        authCode,
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
                        "Exp Date: ",
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
                        expDate,
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
                        "Card Type: ",
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
                        cardType,
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
                      Text(
                        type,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Computer Name: ",
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
                    computerName,
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
                  "Text Response: ",
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
                    textResponse,
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
