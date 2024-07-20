import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/domain/repositories/authentication_repository.dart';
import 'package:qr_scan/app/presentation/global/widgets/appbar.dart';
import 'package:qr_scan/app/presentation/global/widgets/text_form_custom.dart';
import 'package:qr_scan/app/presentation/routes/routes.dart';

import '../../global/session_controller.dart';
import '../../global/theme/colors.dart';
import '../../global/theme/padding.dart';
import '../../global/utils/complemento.dart';
import '../../global/widgets/custom_button_box.dart';
import '../../global/widgets/custom_heading.dart';
import 'login_controller.dart';
import 'state/login_state.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthenticationRepository get _repository => context.read();
  String _scanBarResult = "";

  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    final UserPassController userPassController = Provider.of(context);
    final userPass = userPassController.state!;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: fondoColor,
      extendBodyBehindAppBar: true,
      appBar: getAppbar(Colors.transparent),
      body: OrientationBuilder(builder: (context, orientation) {
        return SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const ClampingScrollPhysics(),
          child: ChangeNotifierProvider(
            create: (_) => LoginController(
              LoginState(
                username: userPass.usuario ?? "",
                password: userPass.password ?? "",
                ipServer: '',
                fetching: false,
              ),
              // no hace falta poner en read el tipo de dato xq ya en el controller lo agregamos
              authenticationRepository: context.read(),
            ),
            child: Form(child: Builder(builder: (context) {
              final controller = Provider.of<LoginController>(context);
              return AbsorbPointer(
                absorbing: controller.state.fetching,
                child: Stack(
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
                            height:
                                orientation == Orientation.landscape ? 80 : 150,
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
                            child: ClipRRect(
                              child: Image.asset(
                                '${assetImg}qr-scan.png',
                              ),
                            ),
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
                                    title: 'Restaurant',
                                    title2: " QR",
                                    subTitle:
                                        'Login your account to start the service',
                                    centro: true,
                                    color: textBlack,
                                  ),
                                  const SizedBox(
                                    height: miniSpacer,
                                  ),
                                  TextFormCustom(
                                    onChanged: (text) {
                                      controller.onUsernameChanged(text);
                                    },
                                    prefixIcon: 'user-new.svg',
                                    valor: controller.state.username,
                                    labelText: 'Username',
                                    validator: (text) {
                                      text = text?.trim().toLowerCase() ?? '';
                                      if (text.isEmpty)
                                        return "Invalid Username";
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: miniSpacer,
                                  ),
                                  TextFormCustom(
                                    onChanged: (text) {
                                      controller.onPasswordChanged(text);
                                    },
                                    prefixIcon: 'key_icon.svg',
                                    labelText: 'Password',
                                    isPassword: true,
                                    blockedViewPass: (userPass.usuario == "" &&
                                            userPass.password == "")
                                        ? false
                                        : true,
                                    valor: controller.state.password,
                                    validator: (text) {
                                      text = text?.replaceAll(' ', '') ?? '';
                                      if (text.isEmpty) return "Empty Password";
                                      if (text.length < 4)
                                        return "Invalid Password";
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: smallSpacer,
                                  ),
                                  controller.state.fetching
                                      ? const CircularProgressIndicator()
                                      : InkWell(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          onTap: () {
                                            final isValid =
                                                Form.of(context).validate();
                                            if (isValid) {
                                              /* scanBarCodeNormal(
                                                  context, controller); */
                                              Navigator.pushNamed(
                                                  context, Routes.homeScam);
                                            }
                                          },
                                          // color: Colors.blue,
                                          child: const CustomButtonBoxStyle(
                                            icon: "paperplane.svg",
                                            iconActive: true,
                                            title: 'Login',
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    /* Positioned(
                      top: 45,
                      right: 20,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () async {
                          _scanBarResult = await controller.readIp();
                          setState(() {});
                        },
                        child: Container(
                          height: 45.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                              // border: Border.all(width: 1, color: fondoColor),
                              color: primary,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(width: 1, color: textWhite)),
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            assetImg + 'setting.svg',
                            width: 20,
                            color: textWhite,
                          ),
                        ),
                      ),
                    ), */
                  ],
                ),
              );
            })),
          ),
        );
      }),
    );
  }

  Future<void> scanBarCodeNormal(
      BuildContext context, LoginController controller) async {
    String barCodeScan;
    // final LoginController loginController = context.read();
    try {
      barCodeScan = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      debugPrint(barCodeScan);
      barCodeScan == -1 ? barCodeScan = "" : barCodeScan = barCodeScan;
      controller.onIpServerChanged(barCodeScan);
      await controller.guardarIp(barCodeScan);
    } on PlatformException {
      barCodeScan = "Failed to get platform version.";
    }
  }
}
