// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scan/app/domain/models/restaurant/restaurant.dart';
import 'package:qr_scan/app/domain/models/user_save/user_save_model.dart';
import 'package:qr_scan/app/domain/repositories/restaunrant_access_repository.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_heading.dart';

import '../../../domain/repositories/account_repository.dart';
import '../../../domain/repositories/authentication_repository.dart';
import '../../../domain/repositories/connectivity_repository.dart';
import '../../global/session_controller.dart';
import '../../routes/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // comprobamos si hay internet
  @override
  void initState() {
    super.initState();
    // hacemos que nuestro widget se renderize para que funcione la injeccion
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _init();
      },
    );
    // _init();
  }

  Future<void> _init() async {
    final routeName = await () async {
      // otro metodo es con context.read xq ya tiene el listen en false
      /* final connectivyRepository = Provider.of<ConnectivyRespository>(
        context,
        listen: false,
      ); */
      final ConnectivyRespository connectivyRespository = context.read();
      /* final authenticationRepository = Provider.of<AuthenticationRepository>(
        context,
        listen: false,
      ); */
      final AuthenticationRepository authenticationRepository = context.read();
      final AccounteRepository accounteRepository = context.read();
      final SessionController sessionController = context.read();
      final RestaurantController restaurantController = context.read();
      final RestaurantAccessRepository repository = context.read();
      final UserPassController userPassController = context.read();

      final hasInternet = await connectivyRespository.hasInternet;
      if (!hasInternet) return Routes.offline;

      String? usuario = await authenticationRepository.readUser();
      String? password = await authenticationRepository.readPassUser();
      userPassController.setUser(UserSaveModel(
        usuario: usuario ?? "",
        password: password ?? "",
      ));

      final isLogin = await authenticationRepository.isSignedIn;
      if (isLogin == false) {
        return Routes.login;
      }

      final user = await accounteRepository.getUserData();
      // guardamos los datos del user en sessionController
      if (user != null) {
        sessionController.setUser(user);
        String? restaurant = await repository.readRestaurant();
        String? restaurantId = await repository.readRestaurantId();

        restaurantController.setUser(Restaurant(
            id: int.parse(restaurantId ?? "0"),
            restaurant: restaurant ?? "No hay nada"));
        return Routes.typeRol;
      }
      return Routes.login;
    }();
    if (mounted) {
      _goTo(routeName);
    }
  }

  void _goTo(String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // print("Algo Paso ;v");
    return Scaffold(
      backgroundColor: fondoColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            height: size.height * .35,
            child: ClipRRect(
              child: Image.asset(
                '${assetImg}qr-scan.png',
              ),
            ),
          ),
          const CustomHeading(
            title: 'Restaurant',
            title2: " QR",
            subTitle: '',
            centro: true,
            color: textBlack,
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: CircularProgressIndicator(
              color: primary,
            ),
          ),
        ],
      ),
    );
  }
}
