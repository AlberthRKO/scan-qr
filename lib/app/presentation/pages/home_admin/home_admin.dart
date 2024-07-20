import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/presentation/global/session_controller.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';
import 'package:qr_scan/app/presentation/global/widgets/appbar.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_app_bar_links.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_title.dart';
import 'package:qr_scan/app/presentation/routes/routes.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    final RestaurantController restaurantController = Provider.of(context);
    final restaurant = restaurantController.state!;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: getAppbar(Colors.transparent),
      backgroundColor: fondoColor,
      body: OrientationBuilder(builder: (context, orientation) {
        return SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
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
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CustomAppBarLinks(
                    backgroundColor: Colors.transparent,
                    colorAppBar: textWhite,
                    title: 'Admin Services',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      runSpacing: 10,
                      spacing: size.width * 0.025,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: () {
                            Navigator.pushNamed(context, Routes.employees,
                                arguments: restaurant.id);
                          },
                          child: Container(
                            height: orientation == Orientation.landscape
                                ? 250
                                : 250,
                            width: orientation == Orientation.landscape
                                ? 200
                                : 200,
                            decoration: estiloImagen(context),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Image.asset(
                                    assetImg + 'employeeSetup.png',
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: CustomTitle(
                                    title: "Employee Setup",
                                    extend: false,
                                    fontSize: 14,
                                    centro: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: () {
                            Navigator.pushNamed(context, Routes.shiftHours,
                                arguments: restaurant.id);
                          },
                          child: Container(
                            height: orientation == Orientation.landscape
                                ? 250
                                : 250,
                            width: orientation == Orientation.landscape
                                ? 200
                                : 200,
                            decoration: estiloImagen(context),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Image.asset(
                                    assetImg + 'shiftHour.png',
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: CustomTitle(
                                    title: "Shift Hours",
                                    extend: false,
                                    fontSize: 14,
                                    centro: true,
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
            ],
          ),
        );
      }),
    );
  }

  BoxDecoration estiloImagen(context) {
    return BoxDecoration(
      // color: Colors.red,
      borderRadius: BorderRadius.circular(10),
      // border: Border.all(width: 1, color: primary.withOpacity(.3)),
      color: textWhite,
      boxShadow: [
        BoxShadow(
          color: primary.withOpacity(.1),
          blurRadius: 32,
          offset: Offset(0, 10),
        ),
      ],
    );
  }
}
