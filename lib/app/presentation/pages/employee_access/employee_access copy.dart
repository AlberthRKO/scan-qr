import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_app_bar_links.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_title.dart';
import 'package:qr_scan/app/presentation/pages/login/login_controller.dart';
import 'package:qr_scan/app/presentation/pages/login/state/login_state.dart';
import 'package:qr_scan/app/presentation/routes/routes.dart';

class EmployeeAccessOld extends StatefulWidget {
  const EmployeeAccessOld({super.key});

  @override
  State<EmployeeAccessOld> createState() => _EmployeeAccessOldState();
}

class _EmployeeAccessOldState extends State<EmployeeAccessOld> {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var inputText = "";
  var actives = [false, false, false, false];
  var clears = [false, false, false, false];
  var currentIndex = 0;
  var selectedNumbers = <int>[];
  String pin = "";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginController(
        const LoginState(
          username: '',
          password: '',
          ipServer: '',
          fetching: false,
        ),
        // no hace falta poner en read el tipo de dato xq ya en el controller lo agregamos
        authenticationRepository: context.read(),
      ),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBarLinks(
            title: 'Access Employee',
          ),
        ),
        backgroundColor: fondoColor,
        body: OrientationBuilder(builder: (context, orientation) {
          final controller = Provider.of<LoginController>(context);
          if (orientation == Orientation.portrait) {
            return AbsorbPointer(
              absorbing: controller.state.fetching,
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const CustomTitle(
                          title: "PIN WAITER",
                          extend: false,
                          fontSize: 12,
                          centro: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                        controller.state.fetching
                            ? const CircularProgressIndicator(
                                color: primary,
                              )
                            : InkWell(
                                onTap: () {
                                  if (selectedNumbers.length == 4) {
                                    String cadena = selectedNumbers
                                        .map((numero) => numero.toString())
                                        .join();
                                    setState(() {
                                      pin = cadena;
                                      print("Este es el Pin $pin");
                                    });
                                    // controller.onPinChanged(cadena);
                                    _submitPin(context);
                                  } else {}
                                  // Navigator.pushNamed(context, Routes.selectProducts);
                                },
                                child: Container(
                                  height: 35,
                                  width: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: primary.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: primary.withOpacity(0.5),
                                        spreadRadius: 0.0,
                                        blurRadius: 6.0,
                                        offset: const Offset(0, 2),
                                      )
                                    ],
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.login,
                                        color: textWhite,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'To Access',
                                        style: TextStyle(
                                          color: textWhite,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Epilogue",
                                          // fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  Expanded(
                    flex: 6,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.95 / 0.6,
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
                                      borderRadius: BorderRadius.circular(80),
                                      boxShadow: [
                                        BoxShadow(
                                          color: index == 9
                                              ? Colors.transparent
                                              : primary.withOpacity(0.05),
                                          spreadRadius: 0.0,
                                          blurRadius: 4.0,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {
                                        if (index == 11) {
                                          if (selectedNumbers.isNotEmpty) {
                                            setState(() {
                                              selectedNumbers.removeLast();
                                              currentIndex =
                                                  selectedNumbers.length;
                                              actives[currentIndex] = false;
                                            });
                                          }
                                        } else {
                                          if (currentIndex < 4) {
                                            setState(() {
                                              actives[currentIndex] = true;
                                              currentIndex++;
                                              selectedNumbers.add(
                                                numbers[index == 10
                                                    ? index - 1
                                                    : index],
                                              );

                                              if (selectedNumbers.length > 4) {
                                                selectedNumbers =
                                                    selectedNumbers.sublist(
                                                        selectedNumbers.length -
                                                            4);
                                              }
                                            });
                                          }
                                        }
                                        if (index == 11) {
                                          if (inputText == "") {
                                            print("ya no hay campos");
                                          } else {
                                            inputText = inputText.substring(
                                                0, inputText.length - 1);
                                            print(selectedNumbers);
                                          }
                                        } else {
                                          inputText += numbers[index == 10
                                                  ? index - 1
                                                  : index]
                                              .toString();
                                          print(selectedNumbers);
                                        }
                                      },
                                      textColor: textColor,
                                      minWidth: 60,
                                      height: 60,
                                      color: textWhite,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      elevation: 0,
                                      child: index == 11
                                          ? const Icon(Icons.backspace)
                                          : Text(
                                              "${numbers[index == 10 ? index - 1 : index]}",
                                              style: const TextStyle(
                                                fontFamily: "Epilogue",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                    ),
                                  ),
                          ),
                        );
                      },
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
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const CustomTitle(
                          title: "PIN EMPLOYEE",
                          extend: false,
                          fontSize: 12,
                          centro: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                        controller.state.fetching
                            ? const CircularProgressIndicator(
                                color: primary,
                              )
                            : InkWell(
                                onTap: () {
                                  if (selectedNumbers.length == 4) {
                                    String cadena = selectedNumbers
                                        .map((numero) => numero.toString())
                                        .join();
                                    // controller.onPinChanged(cadena);
                                    setState(() {
                                      pin = cadena;
                                    });
                                    _submitPin(context);
                                  } else {}
                                  // Navigator.pushNamed(context, Routes.selectProducts);
                                },
                                child: Container(
                                  height: 35,
                                  width: 150,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: primary.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: primary.withOpacity(0.5),
                                        spreadRadius: 0.0,
                                        blurRadius: 6.0,
                                        offset: const Offset(0, 2),
                                      )
                                    ],
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.login,
                                        color: textWhite,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'To Access',
                                        style: TextStyle(
                                          color: textWhite,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Epilogue",
                                          // fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  Expanded(
                    flex: 6,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.95 / 0.4,
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
                                      borderRadius: BorderRadius.circular(80),
                                      boxShadow: [
                                        BoxShadow(
                                          color: index == 9
                                              ? Colors.transparent
                                              : primary.withOpacity(0.05),
                                          spreadRadius: 0.0,
                                          blurRadius: 4.0,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {
                                        if (index == 11) {
                                          if (selectedNumbers.isNotEmpty) {
                                            setState(() {
                                              selectedNumbers.removeLast();
                                              currentIndex =
                                                  selectedNumbers.length;
                                              actives[currentIndex] = false;
                                            });
                                          }
                                        } else {
                                          if (currentIndex < 4) {
                                            setState(() {
                                              actives[currentIndex] = true;
                                              currentIndex++;
                                              selectedNumbers.add(
                                                numbers[index == 10
                                                    ? index - 1
                                                    : index],
                                              );

                                              if (selectedNumbers.length > 4) {
                                                selectedNumbers =
                                                    selectedNumbers.sublist(
                                                        selectedNumbers.length -
                                                            4);
                                              }
                                            });
                                          }
                                        }
                                        if (index == 11) {
                                          if (inputText == "") {
                                            print("ya no hay campos");
                                          } else {
                                            inputText = inputText.substring(
                                                0, inputText.length - 1);
                                            print(selectedNumbers);
                                          }
                                        } else {
                                          inputText += numbers[index == 10
                                                  ? index - 1
                                                  : index]
                                              .toString();
                                          print(selectedNumbers);
                                        }
                                      },
                                      textColor: textColor,
                                      minWidth: 60,
                                      height: 60,
                                      color: textWhite,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      elevation: 0,
                                      child: index == 11
                                          ? const Icon(Icons.backspace)
                                          : Text(
                                              "${numbers[index == 10 ? index - 1 : index]}",
                                              style: const TextStyle(
                                                fontFamily: "Epilogue",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                    ),
                                  ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            );
          }
        }),
      ),
    );
  }

  Future<void> _submitPin(BuildContext context) async {
    Navigator.pushNamed(context, Routes.employeeActions);
    // listen true solo se usa en la vista con build o calllback de builder
    /* final LoginController loginController = context.read();
    // bloqueamos el form

    final result = await loginController.submitPin();

    // Condicion si no se renderizo la vista
    if (!loginController.mounted) return;

    result.when(
      left: (failure) {
        // Con programacion funcional
        final message = failure.when(
          notFound: () => 'Not Found',
          network: () => 'Network Error',
          unathorized: () => 'Invalid Password',
          unknown: () => 'Error, Correo o contraseña invalidos!',
          ip: () => 'Error, Scan IP Server',
        );

        showMaterialModalBottomSheet(
          enableDrag: false,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) {
            Future.delayed(const Duration(seconds: 2), () {
              FocusScope.of(context).unfocus();
              Navigator.pop(context);
            });
            return ModalError(
              error: message,
            );
          },
        );
      },
      right: (user) {
        final SessionController sessionController = context.read();
        sessionController.setUser(user);
        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.pushReplacementNamed(context, Routes.selectProducts);
      },
    ); */
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
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(),
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
