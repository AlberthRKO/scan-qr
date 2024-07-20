// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/theme/padding.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_heading.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.title,
    required this.subtitle,
    required this.img,
    // required this.amount,
    // required this.img,
  });

  final String title;
  final String subtitle;
  final String img;
  // final int amount;
  // final String img;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        width: size.width * .9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * .3,
              child: ClipRRect(
                child: SvgPicture.asset(
                  '${assetImg}$img',
                ),
              ),
            ),
            CustomHeading(
              title: title,
              subTitle: subtitle,
              fonsizeTitle: 20.0,
              fonsizesubTitle: 12.0,
              centro: true,
              color: textBlack,
            ),
            SizedBox(
              height: miniSpacer,
            ),
          ],
        ),
      ),
    );
  }
}

class CardSinInter extends StatelessWidget {
  const CardSinInter({
    super.key,
    required this.title,
    required this.subtitle,
    // required this.amount,
    // required this.img,
  });

  final String title;
  final String subtitle;
  // final int amount;
  // final String img;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        width: size.width * .9,
        // height: size.height * .25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Column(
          children: [
            Image.asset(assetImg + "noInter.png"),
            CustomHeading(
              title: title,
              subTitle: subtitle,
              fonsizeTitle: 20.0,
              fonsizesubTitle: 12.0,
              centro: true,
              color: textBlack,
            ),
            SizedBox(
              height: miniSpacer,
            ),
          ],
        ),
      ),
    );
  }
}
