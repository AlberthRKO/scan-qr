import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/presentation/global/session_controller.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';
import 'package:qr_scan/app/presentation/global/widgets/appbar.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_app_bar_links.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_button_box.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_title.dart';
import 'package:qr_scan/app/presentation/pages/employee_access/access_controller.dart';
import 'package:qr_scan/app/presentation/pages/employee_access/state/access_state.dart';
import 'package:qr_scan/app/presentation/routes/routes.dart';

class EmployeeAccess extends StatefulWidget {
  const EmployeeAccess({super.key});

  @override
  State<EmployeeAccess> createState() => _EmployeeAccessState();
}

class _EmployeeAccessState extends State<EmployeeAccess> {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var inputText = "";
  var actives = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  var clears = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  var currentIndex = 0;
  var selectedNumbers = <int>[];
  Stream<DateTime>? dateTimeStream;
  @override
  void initState() {
    dateTimeStream = Stream<DateTime>.periodic(
      Duration(seconds: 1),
      (_) => DateTime.now(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final RestaurantController restaurantController = Provider.of(context);
    final restaurant = restaurantController.state!;
    return ChangeNotifierProvider(
      create: (_) => AccessController(
        const AccessState(
          pin: '',
          fetching: false,
        ),
        // no hace falta poner en read el tipo de dato xq ya en el controller lo agregamos
        authenticationRepository: context.read(),
      ),
      child: Scaffold(
        appBar: getAppbar(Colors.transparent),
        backgroundColor: fondoColor,
        body: StreamBuilder<DateTime>(
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
                return OrientationBuilder(builder: (context, orientation) {
                  final controller = Provider.of<AccessController>(context);
                  if (orientation == Orientation.portrait) {
                    return AbsorbPointer(
                      absorbing: controller.state.fetching,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          CustomAppBarLinks(
                            title: 'Access Employee',
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("Bussiness: "),
                                    Text(
                                      restaurant.restaurant,
                                      style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
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
                                    Text(
                                      formattedTime,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: textBlack,
                                        fontFamily: "Epilogue",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  DateFormat('EEEE, d MMMM yyyy')
                                      .format(DateTime.now()),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: textBlack,
                                    fontFamily: "Epilogue",
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const CustomTitle(
                                  title: "EMPLOYEE PASSWORD",
                                  extend: false,
                                  fontSize: 12,
                                  centro: true,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Center(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 80,
                                    child: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      alignment: WrapAlignment.center,
                                      children: [
                                        for (var i = 0; i < actives.length; i++)
                                          AnimationBoxItem(
                                            clear: clears[i],
                                            active: actives[i],
                                            text: selectedNumbers.length > i
                                                ? selectedNumbers[i].toString()
                                                : '',
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                controller.state.fetching
                                    ? const CircularProgressIndicator(
                                        color: primary,
                                      )
                                    : CustomButtonBoxStyle(
                                        funcion: () {
                                          String cadena = selectedNumbers
                                              .map(
                                                  (numero) => numero.toString())
                                              .join();
                                          controller.onPinChanged(cadena);
                                          setState(() {
                                            selectedNumbers
                                                .clear(); // Elimina todos los elementos de la lista selectedNumbers
                                            currentIndex =
                                                0; // Restablece currentIndex a 0
                                            // Actualiza todos los elementos de la lista actives a false
                                            for (int i = 0;
                                                i < actives.length;
                                                i++) {
                                              actives[i] = false;
                                            }
                                          });
                                          _submitPin(context,
                                              restaurant.id.toString());
                                        },
                                        title: "To Access",
                                        sizeHeight: 40,
                                        fontSize: 14,
                                        iconActive: true,
                                        icon: "paperplane.svg",
                                      ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          // Spacer(),
                          Expanded(
                            flex: 6,
                            child: Container(
                              width: size.width >= 500
                                  ? size.width * .5
                                  : size.width * .9,
                              alignment: Alignment.center,
                              child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 1 / 0.7,
                                ),
                                itemCount: 12,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: const EdgeInsets.all(4),
                                    width: 50,
                                    height: 50,
                                    child: Center(
                                      child: index == 9
                                          ? Container()
                                          : Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(80),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: index == 9
                                                        ? Colors.transparent
                                                        : primary
                                                            .withOpacity(0.05),
                                                    spreadRadius: 0.0,
                                                    blurRadius: 4.0,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                              child: MaterialButton(
                                                onPressed: () {
                                                  if (index == 11) {
                                                    if (selectedNumbers
                                                        .isNotEmpty) {
                                                      setState(() {
                                                        selectedNumbers
                                                            .removeLast();
                                                        currentIndex =
                                                            selectedNumbers
                                                                .length;
                                                        actives[currentIndex] =
                                                            false;
                                                      });
                                                    }
                                                  } else {
                                                    if (currentIndex < 10) {
                                                      setState(() {
                                                        actives[currentIndex] =
                                                            true;
                                                        currentIndex++;
                                                        selectedNumbers.add(
                                                          numbers[index == 10
                                                              ? index - 1
                                                              : index],
                                                        );

                                                        if (selectedNumbers
                                                                .length >
                                                            10) {
                                                          selectedNumbers =
                                                              selectedNumbers.sublist(
                                                                  selectedNumbers
                                                                          .length -
                                                                      10);
                                                        }
                                                      });
                                                    }
                                                  }
                                                  if (index == 11) {
                                                    if (inputText == "") {
                                                      print("ya no hay campos");
                                                    } else {
                                                      inputText =
                                                          inputText.substring(
                                                              0,
                                                              inputText.length -
                                                                  1);
                                                      print(selectedNumbers);
                                                    }
                                                  } else {
                                                    inputText += numbers[
                                                            index == 10
                                                                ? index - 1
                                                                : index]
                                                        .toString();
                                                    print(selectedNumbers);
                                                  }
                                                },
                                                textColor: textColor,
                                                minWidth:
                                                    size.width >= 500 ? 80 : 60,
                                                height:
                                                    size.width >= 500 ? 80 : 60,
                                                color: textWhite,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                elevation: 1,
                                                child: index == 11
                                                    ? const Icon(
                                                        Icons
                                                            .backspace_outlined,
                                                      )
                                                    : Text(
                                                        "${numbers[index == 10 ? index - 1 : index]}",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              "Epilogue",
                                                          fontSize:
                                                              size.width >= 500
                                                                  ? 25
                                                                  : 20,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return AbsorbPointer(
                      absorbing: controller.state.fetching,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          CustomAppBarLinks(
                            title: 'Access Employee',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text("Restaurant: "),
                                        Text(
                                          restaurant.restaurant,
                                          style: TextStyle(
                                            color: primary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          assetImg + 'clock.svg',
                                          color: textColor,
                                          width: 25,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          formattedTime,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: textBlack,
                                            fontFamily: "Epilogue",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      DateFormat('EEEE, d MMMM yyyy')
                                          .format(DateTime.now()),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: textBlack,
                                        fontFamily: "Epilogue",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    const CustomTitle(
                                      title: "PIN EMPLOYEE",
                                      extend: false,
                                      fontSize: 12,
                                      centro: true,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Center(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 80,
                                        child: Wrap(
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          alignment: WrapAlignment.center,
                                          children: [
                                            for (var i = 0;
                                                i < actives.length;
                                                i++)
                                              AnimationBoxItem(
                                                clear: clears[i],
                                                active: actives[i],
                                                text: selectedNumbers.length > i
                                                    ? selectedNumbers[i]
                                                        .toString()
                                                    : '',
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    controller.state.fetching
                                        ? const CircularProgressIndicator(
                                            color: primary,
                                          )
                                        : CustomButtonBoxStyle(
                                            funcion: () {
                                              String cadena = selectedNumbers
                                                  .map((numero) =>
                                                      numero.toString())
                                                  .join();
                                              controller.onPinChanged(cadena);
                                              setState(() {
                                                selectedNumbers
                                                    .clear(); // Elimina todos los elementos de la lista selectedNumbers
                                                currentIndex =
                                                    0; // Restablece currentIndex a 0
                                                // Actualiza todos los elementos de la lista actives a false
                                                for (int i = 0;
                                                    i < actives.length;
                                                    i++) {
                                                  actives[i] = false;
                                                }
                                              });
                                              _submitPin(context,
                                                  restaurant.id.toString());
                                              // Navigator.pushNamed(context, Routes.selectProducts);
                                            },
                                            title: "To Access",
                                            sizeHeight: 40,
                                            fontSize: 14,
                                            iconActive: true,
                                            icon: "paperplane.svg",
                                          ),
                                  ],
                                ),
                              ),
                              // Spacer(),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.height - 100,
                                  child: Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: size.height >= 500
                                          ? size.width * .4
                                          : null,
                                      height: size.height >= 500
                                          ? size.height * .5
                                          : size.height * .8,
                                      child: GridView.builder(
                                        scrollDirection: Axis.vertical,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        physics: const BouncingScrollPhysics(),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          mainAxisSpacing: 0,
                                          childAspectRatio: 1 / .5,
                                        ),
                                        itemCount: 12,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(bottom: 5),
                                            width: 30,
                                            height: 30,
                                            child: index == 9
                                                ? Container()
                                                : Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              80),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: index == 9
                                                              ? Colors
                                                                  .transparent
                                                              : primary
                                                                  .withOpacity(
                                                                      0.05),
                                                          spreadRadius: 0.0,
                                                          blurRadius: 4.0,
                                                          offset: const Offset(
                                                              0, 2),
                                                        ),
                                                      ],
                                                    ),
                                                    child: MaterialButton(
                                                      onPressed: () {
                                                        if (index == 11) {
                                                          if (selectedNumbers
                                                              .isNotEmpty) {
                                                            setState(() {
                                                              selectedNumbers
                                                                  .removeLast();
                                                              currentIndex =
                                                                  selectedNumbers
                                                                      .length;
                                                              actives[currentIndex] =
                                                                  false;
                                                            });
                                                          }
                                                        } else {
                                                          if (currentIndex <
                                                              10) {
                                                            setState(() {
                                                              actives[currentIndex] =
                                                                  true;
                                                              currentIndex++;
                                                              selectedNumbers
                                                                  .add(
                                                                numbers[index ==
                                                                        10
                                                                    ? index - 1
                                                                    : index],
                                                              );

                                                              if (selectedNumbers
                                                                      .length >
                                                                  10) {
                                                                selectedNumbers =
                                                                    selectedNumbers.sublist(
                                                                        selectedNumbers.length -
                                                                            10);
                                                              }
                                                            });
                                                          }
                                                        }
                                                        if (index == 11) {
                                                          if (inputText == "") {
                                                            print(
                                                                "ya no hay campos");
                                                          } else {
                                                            inputText = inputText
                                                                .substring(
                                                                    0,
                                                                    inputText
                                                                            .length -
                                                                        1);
                                                            print(
                                                                selectedNumbers);
                                                          }
                                                        } else {
                                                          inputText += numbers[
                                                                  index == 10
                                                                      ? index -
                                                                          1
                                                                      : index]
                                                              .toString();
                                                          print(
                                                              selectedNumbers);
                                                        }
                                                      },
                                                      textColor: textColor,
                                                      minWidth:
                                                          size.height >= 500
                                                              ? 90
                                                              : 60,
                                                      height: size.height >= 500
                                                          ? 90
                                                          : 60,
                                                      color: textWhite,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      elevation: 1,
                                                      child: index == 11
                                                          ? const Icon(Icons
                                                              .backspace_outlined)
                                                          : Text(
                                                              "${numbers[index == 10 ? index - 1 : index]}",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    "Epilogue",
                                                                fontSize:
                                                                    size.height >=
                                                                            500
                                                                        ? 25
                                                                        : 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                            ),
                                                    ),
                                                  ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                });
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: primary,
                  ),
                );
              }
            }),
      ),
    );
  }

  Future<void> _submitPin(BuildContext context, String restId) async {
    // listen true solo se usa en la vista con build o calllback de builder
    final AccessController accessController = context.read();
    // bloqueamos el form

    final result = await accessController.submitPin(restId);

    // Condicion si no se renderizo la vista
    if (!accessController.mounted) return;

    result.when(
      left: (failure) {},
      right: (employee) {
        final EmployeeSessionPinController employeeSessionPinController =
            context.read();
        employeeSessionPinController.setEmployee(employee);
        Navigator.pushNamed(context, Routes.employeeActions,
            arguments: [int.parse(restId), employee.id!]);
      },
    );
  }
}

class AnimationBoxItem extends StatefulWidget {
  const AnimationBoxItem(
      {Key? key, this.clear = false, this.active = false, required this.text})
      : super(key: key);

  final bool clear;
  final bool active;
  final String text;

  @override
  _AnimationBoxItemState createState() => _AnimationBoxItemState();
}

class _AnimationBoxItemState extends State<AnimationBoxItem>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.clear) {
      animationController.forward(from: 0.0);
    }

    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Container(
        // color: Colors.red,
        margin: const EdgeInsets.all(2),
        child: Stack(
          children: [
            // Container(),
            AnimatedContainer(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              duration: const Duration(milliseconds: 800),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                // color: widget.active ? textWhite : Colors.transparent,
                color: textWhite,
                boxShadow: [
                  BoxShadow(
                    color: primary.withOpacity(0.05),
                    spreadRadius: 0.0,
                    blurRadius: 4.0,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                widget.active ? widget.text : "-",
                style: const TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
