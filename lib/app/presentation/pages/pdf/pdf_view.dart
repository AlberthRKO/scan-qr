// ignore_for_file: prefer_const_constructors

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfWid;
import 'package:printing/printing.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/domain/models/employee_setup/shift_hours/shift_hours_model.dart';
import 'package:qr_scan/app/domain/models/restaurant/restaurant.dart';
import 'package:qr_scan/app/presentation/global/session_controller.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_app_bar_links.dart';
import 'package:qr_scan/app/presentation/routes/routes.dart';

class ViewPDF extends StatefulWidget {
  const ViewPDF({
    Key? key,
    required this.args,
  }) : super(key: key);

  final Map<String, dynamic>? args;

  @override
  _ViewPDFState createState() => _ViewPDFState();
}

class _ViewPDFState extends State<ViewPDF> {
  ShiftHoursModel? hoursModel;
  String type = "";

  @override
  void initState() {
    hoursModel = widget.args?['hourModel'] ?? null;
    type = widget.args?['type'];

    // _getCurrentLocation();

    super.initState();
  }

  // funcion de localizacion

  @override
  Widget build(BuildContext context) {
    final EmployeeSessionPinController employeeSessionPinController =
        Provider.of(context);
    final employee = employeeSessionPinController.state!;
    final RestaurantController restaurantController = Provider.of(context);
    final restaurant = restaurantController.state!;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBarLinks2(
          title: 'View Detail',
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routes.typeRol,
            (route) =>
                false, // Esta función elimina todas las rutas anteriores en la pila
          );
          Navigator.pushNamed(context, Routes.accessEmployee);
          return true;
        },
        child: PdfPreview(
          pdfPreviewPageDecoration: BoxDecoration(
            color: textWhite,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: textBlack.withOpacity(0.3),
                spreadRadius: 0.0,
                blurRadius: 6.0,
                offset: const Offset(0, 2),
              )
            ],
          ),
          scrollViewDecoration: const BoxDecoration(color: fondoColor),
          build: (format) => _createPdf(
            format,
            employee,
            restaurant,
          ),
        ),
      ),
    );
  }

  Future<Uint8List> _createPdf(
      PdfPageFormat format, Employee employee, Restaurant restaurant) async {
    final pdf = pdfWid.Document(
      version: PdfVersion.pdf_1_4,
      compress: true,
    );
    String location = await _getCurrentLocation();

    pdf.addPage(
      pdfWid.Page(
        pageFormat: PdfPageFormat.standard,
        build: (context) {
          return _buildPdfWidget(
              employee, restaurant, type, hoursModel, location);
        },
      ),
    );
    return pdf.save();
  }
}

// Función para obtener la fecha actual en el formato deseado
String _getFormattedDate() {
  final now = DateTime.now();
  final daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  final monthsOfYear = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  final dayOfWeek = daysOfWeek[now.weekday - 1];
  final month = monthsOfYear[now.month - 1];

  return "$dayOfWeek, ${now.day} $month ${now.year}";
}

Future<String> _getCurrentLocation() async {
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error("Location services are disabled.");
  }
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error("Location permissions are denied");
    }
  }
  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        "Location permissions are permanently denied, we cannot request permissions");
  }

  Position position;
  try {
    position = await Geolocator.getCurrentPosition();

    String lat = '${position.latitude}';
    String long = '${position.longitude}';

    return "$lat $long";
  } catch (e) {
    return "";
  }

  // return await Geolocator.getCurrentPosition();
}

pdfWid.Widget _buildPdfWidget(Employee employee, Restaurant restaurant,
    String type, ShiftHoursModel? hoursModel, String location) {
  final primary = PdfColor.fromInt(0xFF002793);
  final textColor = PdfColor.fromInt(0xFF0A183F);

  // Seccion de mostrado de hora

  String timeStarted = hoursModel?.timeInString ?? "";
  String timeBreakStarted = hoursModel?.breakInString ?? "";
  String timeEnded = hoursModel?.timeOutString ?? "";
  String timeBreakEnded = hoursModel?.breakOutString ?? "";

  String getFormattedTime(String type, String timeString) {
    if (timeString.isEmpty) return "The time was not recorded";

    DateTime time = DateTime.parse(timeString);
    return DateFormat('HH:mm a').format(time);
  }

  String getHora(String type, String timeStarted, String timeBreakStarted,
      String timeEnded, String timeBreakEnded) {
    switch (type) {
      case "Clock In":
        return getFormattedTime(type, timeStarted);
      case "Clock Out":
        return getFormattedTime(type, timeEnded);
      case "Break In":
        return getFormattedTime(type, timeBreakStarted);
      case "Break Out":
        return getFormattedTime(type, timeBreakEnded);
      default:
        return "The time was not recorded";
    }
  }

// Uso:
  String hora =
      getHora(type, timeStarted, timeBreakStarted, timeEnded, timeBreakEnded);

  return pdfWid.Container(
    width: double.infinity,
    decoration: pdfWid.BoxDecoration(
      color: PdfColors.white,
    ),
    child: pdfWid.Column(
      crossAxisAlignment: pdfWid.CrossAxisAlignment.center,
      children: [
        pdfWid.Text(
          "Detail of $type",
          style: pdfWid.TextStyle(
            fontSize: 20,
            color: primary,
            fontWeight: pdfWid.FontWeight.bold,
          ),
        ),
        pdfWid.SizedBox(height: 15),

        pdfWid.Row(
          mainAxisAlignment: pdfWid.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pdfWid.CrossAxisAlignment.center,
          children: [
            pdfWid.Text(
              "${employee.name} ${employee.lastname}",
              style: pdfWid.TextStyle(
                fontSize: 16,
                color: textColor,
                fontWeight: pdfWid.FontWeight.bold,
              ),
            ),
            pdfWid.Flexible(
              child: pdfWid.Text(
                _getFormattedDate(),
                style: pdfWid.TextStyle(
                  fontSize: 13,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
        pdfWid.SizedBox(
          height: 10,
        ),
        pdfWid.Row(
          mainAxisAlignment: pdfWid.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pdfWid.CrossAxisAlignment.center,
          children: [
            pdfWid.Text(
              "Bussines",
              style: pdfWid.TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
            pdfWid.Flexible(
              child: pdfWid.Text(
                "${restaurant.restaurant}",
                style: pdfWid.TextStyle(
                  fontSize: 13,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
        pdfWid.SizedBox(
          height: 10,
        ),
        pdfWid.Row(
          mainAxisAlignment: pdfWid.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pdfWid.CrossAxisAlignment.center,
          children: [
            pdfWid.Text(
              "Location",
              style: pdfWid.TextStyle(
                fontSize: 16,
                color: textColor,
              ),
            ),
            pdfWid.Flexible(
              child: pdfWid.Text(
                "$location",
                style: pdfWid.TextStyle(
                  fontSize: 13,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
        pdfWid.SizedBox(height: 20),
        pdfWid.Row(
          mainAxisAlignment: pdfWid.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pdfWid.CrossAxisAlignment.start,
          children: [
            pdfWid.Text(
              "Type",
              style: pdfWid.TextStyle(
                fontSize: 16,
                color: primary,
                fontWeight: pdfWid.FontWeight.bold,
              ),
            ),
            pdfWid.Text(
              "Registration Time",
              style: pdfWid.TextStyle(
                fontSize: 16,
                color: primary,
                fontWeight: pdfWid.FontWeight.bold,
              ),
            ),
          ],
        ),
        pdfWid.Divider(color: PdfColors.grey200),
        pdfWid.Row(
          mainAxisAlignment: pdfWid.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pdfWid.CrossAxisAlignment.center,
          children: [
            pdfWid.Row(
              crossAxisAlignment: pdfWid.CrossAxisAlignment.center,
              children: [
                pdfWid.Text(
                  "$type: ",
                  style: pdfWid.TextStyle(
                    fontSize: 13,
                    color: textColor,
                    fontWeight: pdfWid.FontWeight.bold,
                  ),
                ),
              ],
            ),
            pdfWid.SizedBox(width: 5),
            pdfWid.Flexible(
              child: pdfWid.Text(
                "$hora",
                style: pdfWid.TextStyle(
                  fontSize: 13,
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
        pdfWid.SizedBox(height: 5),
        // Repite la misma estructura para los otros elementos de tu widget...
      ],
    ),
  );
}
