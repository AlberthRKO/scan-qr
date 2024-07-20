// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/presentation/global/session_controller.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';

class CardEmployee extends StatefulWidget {
  const CardEmployee({
    super.key,
    required this.employeename,
    required this.amount,
    required this.todayHours,
    required this.totalHours,
    required this.timeStarted,
    this.state = "",
    this.state2 = "",
    required this.note,
    this.colorState = textWhite,
    this.colorState2 = textWhite,
    this.totalBreakHours = "-",
    this.timeBreakEnded = "-",
    this.timeBreakStarted = "-",
  });

  final String employeename;
  final double amount;
  final String totalHours;
  final String totalBreakHours;
  final String todayHours;
  final String timeStarted;
  final String timeBreakEnded;
  final String timeBreakStarted;
  final String state;
  final String state2;
  final String note;
  final Color colorState;
  final Color colorState2;

  @override
  State<CardEmployee> createState() => _CardEmployeeState();
}

class _CardEmployeeState extends State<CardEmployee> {
  Stream<DateTime>? dateTimeStream;

  @override
  void initState() {
    super.initState();
    dateTimeStream = Stream<DateTime>.periodic(
      Duration(seconds: 1),
      (_) => DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final EmployeeSessionPinController employeeSessionPinController =
        Provider.of(context);
    final employee = employeeSessionPinController.state!;
    List<Map<String, dynamic>> roles = [
      {"name": "Manager", "value": employee.ismanager},
      {"name": "Waiter", "value": employee.iscurrentwaiter},
      {"name": "Driver", "value": employee.iscurrentdriver},
      {"name": "Bartender", "value": employee.bartender},
      {"name": "Cashier", "value": employee.iscashier},
      {"name": "Host", "value": employee.ishost},
      {"name": "Cook", "value": employee.iscook},
      {"name": "Bus", "value": employee.isbus},
      {"name": "Runner", "value": employee.isrunner},
      {"name": "Kitchen Staff", "value": employee.iskitchen},
      {"name": "Dishwasher", "value": employee.dishwasher},
      {"name": "Line Job", "value": employee.linejob},
      {"name": "Shift Manager", "value": employee.shiftmanager},
      {
        "name": "Eligile for Overtime",
        "value": employee.overtime,
      },
    ];
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4,
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
                Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: bgActions,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset(
                    assetImg + 'profile.svg',
                    height: 80,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  // o Flexible
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                          Expanded(
                            child: Text(
                              widget.employeename,
                              style: TextStyle(
                                fontSize: 12,
                                color: textBlack,
                                fontFamily: "Epilogue",
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                decoration: BoxDecoration(
                                  color: widget.colorState.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  widget.state == "" ? "-" : widget.state,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: widget.colorState,
                                    fontFamily: "Epilogue",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 10),
                                decoration: BoxDecoration(
                                  color: widget.colorState2.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  widget.state2 == "" ? "-" : widget.state2,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: widget.colorState2,
                                    fontFamily: "Epilogue",
                                  ),
                                ),
                              ),
                            ],
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
                          Expanded(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              runSpacing: 5,
                              spacing: .5,
                              children: roles.map((rol) {
                                if (rol['value'] as bool) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: primary.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      rol["name"],
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: primary,
                                        fontFamily: "Epilogue",
                                      ),
                                    ),
                                  );
                                } else {
                                  return SizedBox.shrink();
                                }
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // More
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetImg + 'clock.svg',
                  color: textColor,
                  width: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                StreamBuilder<DateTime>(
                  stream: dateTimeStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      DateTime? currentTime = snapshot.data;
                      String? formattedHour =
                          currentTime?.hour.toString().padLeft(2, '0');
                      String? formattedMinute =
                          currentTime?.minute.toString().padLeft(2, '0');
                      String? formattedSecond =
                          currentTime?.second.toString().padLeft(2, '0');
                      String formattedTime =
                          "$formattedHour:$formattedMinute:$formattedSecond";

                      return Text(
                        formattedTime,
                        style: TextStyle(
                          fontSize: 16,
                          color: textBlack,
                          fontFamily: "Epilogue",
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    } else {
                      return Text(
                        'Loading...',
                        style: TextStyle(
                          fontSize: 12,
                          color: textBlack,
                          fontFamily: "Epilogue",
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              DateFormat('EEEE, d MMMM yyyy').format(DateTime.now()),
              style: TextStyle(
                fontSize: 12,
                color: textBlack,
                fontFamily: "Epilogue",
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Time Started: ",
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
                  widget.timeStarted,
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Time Ended: ",
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
                  widget.todayHours,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total Hours Day: ",
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
                  widget.totalHours,
                  style: TextStyle(
                    fontSize: 12,
                    color: textBlack,
                    fontFamily: "Epilogue",
                  ),
                ),
              ],
            ),
            widget.timeBreakStarted == "-"
                ? Container()
                : Column(
                    children: [
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Time Break Started: ",
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
                            widget.timeBreakStarted,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Time Break Ended: ",
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
                            widget.timeBreakEnded,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Total Break Hours: ",
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
                            widget.totalBreakHours,
                            style: TextStyle(
                              fontSize: 12,
                              color: textBlack,
                              fontFamily: "Epilogue",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class DetailEmployee extends StatefulWidget {
  const DetailEmployee({
    super.key,
    this.state = "",
    this.hoursWeek = "",
    this.state2 = "",
    this.colorState = textWhite,
    this.colorState2 = textWhite,
  });

  final String hoursWeek;
  final String state;
  final String state2;
  final Color colorState;
  final Color colorState2;

  @override
  State<DetailEmployee> createState() => _DetailEmployeeState();
}

class _DetailEmployeeState extends State<DetailEmployee> {
  Stream<DateTime>? dateTimeStream;

  @override
  void initState() {
    super.initState();
    dateTimeStream = Stream<DateTime>.periodic(
      Duration(seconds: 1),
      (_) => DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final EmployeeSessionPinController employeeSessionPinController =
        Provider.of(context);
    final employee = employeeSessionPinController.state!;
    List<Map<String, dynamic>> roles = [
      {"name": "Manager", "value": employee.ismanager},
      {"name": "Waiter", "value": employee.iscurrentwaiter},
      {"name": "Driver", "value": employee.iscurrentdriver},
      {"name": "Bartender", "value": employee.bartender},
      {"name": "Cashier", "value": employee.iscashier},
      {"name": "Host", "value": employee.ishost},
      {"name": "Cook", "value": employee.iscook},
      {"name": "Bus", "value": employee.isbus},
      {"name": "Runner", "value": employee.isrunner},
      {"name": "Kitchen Staff", "value": employee.iskitchen},
      {"name": "Dishwasher", "value": employee.dishwasher},
      {"name": "Line Job", "value": employee.linejob},
      {"name": "Shift Manager", "value": employee.shiftmanager},
      {
        "name": "Eligile for Overtime",
        "value": employee.overtime,
      },
    ];
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: primary.withOpacity(.1),
            blurRadius: 32,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                      color: widget.colorState.withOpacity(.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      widget.state == "" ? "-" : widget.state,
                      style: TextStyle(
                        fontSize: 12,
                        color: widget.colorState,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Epilogue",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                      color: widget.colorState2.withOpacity(.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      widget.state2 == "" ? "-" : widget.state2,
                      style: TextStyle(
                        fontSize: 12,
                        color: widget.colorState2,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Epilogue",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hours of the week: ",
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
                widget.hoursWeek == "" ? "N/A" : widget.hoursWeek,
                style: TextStyle(
                  fontSize: 12,
                  color: primary,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Epilogue",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Employee: ",
                  style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                      fontFamily: "Epilogue",
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runSpacing: 5,
                  spacing: .5,
                  children: roles.map((rol) {
                    if (rol['value'] as bool) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        decoration: BoxDecoration(
                          color: primary.withOpacity(.1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          rol["name"],
                          style: TextStyle(
                              fontSize: 12,
                              color: primary,
                              fontFamily: "Epilogue",
                              fontWeight: FontWeight.bold),
                        ),
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RelojStream extends StatefulWidget {
  const RelojStream({
    super.key,
  });

  @override
  State<RelojStream> createState() => _RelojStreamState();
}

class _RelojStreamState extends State<RelojStream> {
  Stream<DateTime>? dateTimeStream;

  @override
  void initState() {
    super.initState();
    dateTimeStream = Stream<DateTime>.periodic(
      Duration(seconds: 1),
      (_) => DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              assetImg + 'clock.svg',
              color: textColor,
              width: 20,
            ),
            SizedBox(
              width: 5,
            ),
            StreamBuilder<DateTime>(
              stream: dateTimeStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  DateTime? currentTime = snapshot.data;
                  String? formattedHour =
                      currentTime?.hour.toString().padLeft(2, '0');
                  String? formattedMinute =
                      currentTime?.minute.toString().padLeft(2, '0');
                  String? formattedSecond =
                      currentTime?.second.toString().padLeft(2, '0');
                  String formattedTime =
                      "$formattedHour:$formattedMinute:$formattedSecond";

                  return Text(
                    formattedTime,
                    style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontFamily: "Epilogue",
                      fontWeight: FontWeight.w600,
                    ),
                  );
                } else {
                  return Text(
                    'Loading...',
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                      fontFamily: "Epilogue",
                    ),
                  );
                }
              },
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          DateFormat('EEEE, d MMMM yyyy').format(DateTime.now()),
          style: TextStyle(
            fontSize: 14,
            color: textColor,
            fontFamily: "Epilogue",
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

class DetailStateTime extends StatelessWidget {
  const DetailStateTime({
    super.key,
    required this.timeIn,
    required this.timeOut,
    required this.titleIn,
    required this.titleOut,
  });

  final String timeIn;
  final String timeOut;
  final String titleIn;
  final String titleOut;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleIn,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                timeIn,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleOut,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                timeOut,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
