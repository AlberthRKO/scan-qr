import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/theme/padding.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_title.dart';
import 'package:qr_scan/app/presentation/global/widgets/text_form_custom.dart';

class ModalAccess extends StatefulWidget {
  // final int idFactura;

  const ModalAccess({
    Key? key,
    this.closeBtn = true,
    required this.name,
    this.funcion,
    this.fetching = false,
    required this.onChangedForm,
    this.funcionQr,
    this.reverse = false,
  }) : super(key: key);

  final bool closeBtn;
  final String name;
  final void Function()? funcion;
  final Future<void> Function()? funcionQr;
  final void Function(String) onChangedForm;
  final bool fetching;
  final bool reverse;

  @override
  State<ModalAccess> createState() => _ModalAccessState();
}

class _ModalAccessState extends State<ModalAccess> {
  // AuthenticationRepository get _repository => context.read();
  String sucursal = "";
  int codigo = 0;
  String idType = "";
  bool fetching = false;

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return OrientationBuilder(builder: (context, orientation) {
      return Form(
        child: Builder(builder: (context) {
          return AbsorbPointer(
            absorbing: fetching,
            child: Container(
              height: widget.closeBtn ? 200 : 150,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: fondoColor, borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.closeBtn
                            ? const CustomTitle(
                                title: "Password to Access",
                                extend: false,
                                centro: true,
                                fontSize: 16,
                              )
                            : Container(),
                        const SizedBox(
                          height: miniSpacer,
                        ),
                        TextFormCustom(
                          onChanged: (text) {
                            widget.onChangedForm(text);
                          },
                          prefixIcon: 'key_icon.svg',
                          isNumber: true,
                          labelText: 'Password',
                          validator: (text) {
                            text = text?.trim() ?? '';
                            if (text.isEmpty) return "Password cannot be empty";
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: miniSpacer,
                        ),
                        fetching
                            ? const Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircularProgressIndicator(
                                    color: primary,
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: widget.funcion,
                                borderRadius: BorderRadius.circular(
                                  17.5,
                                ),
                                child: Container(
                                  height: 45.0,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: primary,
                                    borderRadius: BorderRadius.circular(17.5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: primary.withOpacity(0.5),
                                        spreadRadius: 0.0,
                                        blurRadius: 6.0,
                                        offset: const Offset(0, 2),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        '${assetImg}paperplane.svg',
                                        color: textWhite,
                                        width: 18.0,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "To Access",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: textWhite,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Epilogue",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      );
    });
  }

  /* Future<void> _submit(
      BuildContext context,
      AuthenticationRepository repository,
      String idType,
      String sucursal) async {
    // listen true solo se usa en la vista con build o calllback de builder
    FocusScope.of(context).unfocus();
    setState(() {
      fetching = true;
    });

    final result = await repository.createKeyPage(sucursal);

    // Condicion si no se renderizo la vista

    result.when(
      left: (failure) {
        // print(failure.toString());
        showMaterialModalBottomSheet(
          isDismissible: false,
          enableDrag: false,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) {
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.pop(context);
            });
            return const ModalError(
              error: "Error al obtener los datos de la sucursal",
            );
          },
        );
        setState(() {
          fetching = false;
        });
      },
      right: (response) {
        print(response);
        showMaterialModalBottomSheet(
          isDismissible: false,
          enableDrag: false,
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) {
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.pop(context);
              widget.closeBtn ? Navigator.pop(context) : "";
              Navigator.pushReplacementNamed(context, Routes.login,
                  arguments: 0);
            });
            return const ModalSuccess(
              name: "Sucursal encontrada!",
              lottie: "loadFile.json",
            );
          },
        );
      },
    );
  } */
}

class ModalAccessPin extends StatefulWidget {
  // final int idFactura;

  const ModalAccessPin({
    Key? key,
    this.closeBtn = true,
    required this.name,
    this.funcion,
    this.fetching = false,
    required this.onChangedForm,
    this.funcionQr,
    this.reverse = false,
  }) : super(key: key);

  final bool closeBtn;
  final String name;
  final void Function()? funcion;
  final Future<void> Function()? funcionQr;
  final void Function(String) onChangedForm;
  final bool fetching;
  final bool reverse;

  @override
  State<ModalAccessPin> createState() => _ModalAccessPinState();
}

class _ModalAccessPinState extends State<ModalAccessPin> {
  // AuthenticationRepository get _repository => context.read();
  String sucursal = "";
  int codigo = 0;
  String idType = "";
  bool fetching = false;

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return OrientationBuilder(builder: (context, orientation) {
      return Form(
        child: Builder(builder: (context) {
          return AbsorbPointer(
            absorbing: fetching,
            child: Container(
              height: widget.closeBtn ? 200 : 150,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: fondoColor, borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.closeBtn
                            ? const CustomTitle(
                                title: "PIN to Access",
                                extend: false,
                                centro: true,
                                fontSize: 16,
                              )
                            : Container(),
                        const SizedBox(
                          height: miniSpacer,
                        ),
                        TextFormCustom(
                          onChanged: (text) {
                            widget.onChangedForm(text);
                          },
                          prefixIcon: 'key_icon.svg',
                          isNumber: true,
                          labelText: 'PIN',
                          validator: (text) {
                            text = text?.trim() ?? '';
                            if (text.isEmpty) return "Password cannot be empty";
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: miniSpacer,
                        ),
                        fetching
                            ? const Center(
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircularProgressIndicator(
                                    color: primary,
                                  ),
                                ),
                              )
                            : InkWell(
                                onTap: widget.funcion,
                                borderRadius: BorderRadius.circular(
                                  17.5,
                                ),
                                child: Container(
                                  height: 45.0,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: primary,
                                    borderRadius: BorderRadius.circular(17.5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: primary.withOpacity(0.5),
                                        spreadRadius: 0.0,
                                        blurRadius: 6.0,
                                        offset: const Offset(0, 2),
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        '${assetImg}paperplane.svg',
                                        color: textWhite,
                                        width: 18.0,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "To Access",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: textWhite,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Epilogue",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      );
    });
  }
}
