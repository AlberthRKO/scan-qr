import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/domain/repositories/authentication_repository.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/theme/padding.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';
import 'package:qr_scan/app/presentation/global/widgets/appbar.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_button_box.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_heading.dart';
import 'package:qr_scan/app/presentation/routes/routes.dart';

class HomeScan extends StatefulWidget {
  const HomeScan({super.key});

  @override
  State<HomeScan> createState() => _HomeScanState();
}

class _HomeScanState extends State<HomeScan> {
  AuthenticationRepository get _repository => context.read();
  String _scanBarResult = "";

  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: fondoColor,
      extendBodyBehindAppBar: true,
      appBar: getAppbar(Colors.transparent),
      body: OrientationBuilder(builder: (context, orientation) {
        return SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const ClampingScrollPhysics(),
          child: Builder(builder: (context) {
            return Stack(
              children: [
                Positioned(
                  width: size.width,
                  top: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Container(
                        color: primary,
                        width: size.width,
                        height: orientation == Orientation.landscape ? 80 : 150,
                      ),
                      SvgPicture.asset(
                        orientation == Orientation.landscape
                            ? assetImg + 'waves-prueba2.svg'
                            : assetImg + 'wave-prueba2.svg',
                        color: primary,
                        width: size.width,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      SizedBox(
                        height: orientation == Orientation.landscape
                            ? size.height * .5
                            : size.height * .35,
                        child: Lottie.asset("assets/images/scan.json",
                            height: 100, fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: orientation == Orientation.landscape
                              ? size.width * 0.5
                              : size.width >= 500
                                  ? size.width * .7
                                  : size.width,
                          padding: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 15),
                          decoration: BoxDecoration(
                            color: textWhite,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: primary.withOpacity(0.1),
                                spreadRadius: 0.0,
                                blurRadius: 10.0,
                                offset: const Offset(0, 4),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              const CustomHeading(
                                title: 'Scan the',
                                title2: " QR",
                                subTitle:
                                    'Access the restaurant using the QR code',
                                centro: true,
                                color: textBlack,
                              ),
                              const SizedBox(
                                height: smallSpacer,
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(15),
                                onTap: () {
                                  final isValid = Form.of(context).validate();
                                  if (isValid) {
                                    /* scanBarCodeNormal(
                                              context, controller); */
                                    Navigator.pushNamed(context, Routes.homeQR);
                                  }
                                },
                                // color: Colors.blue,
                                child: CustomButtonBoxStyle(
                                  funcion: () {
                                    Navigator.pushNamed(context, Routes.homeQR);
                                  },
                                  icon: "qr.svg",
                                  iconActive: true,
                                  title: 'Scan QR',
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
        );
      }),
    );
  }
}
