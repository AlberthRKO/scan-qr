import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/widgets/card_info.dart';

import '../../global/widgets/appbar.dart';

class Offline extends StatelessWidget {
  const Offline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoColor,
      appBar: getAppbar(Colors.transparent),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: CardSinInter(
                title: "Without Internet",
                subtitle:
                    "There is no internet connection, please connect to a Wi-Fi network or mobile data.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
