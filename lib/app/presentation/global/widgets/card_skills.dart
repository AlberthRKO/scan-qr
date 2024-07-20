// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/utils/complemento.dart';

class CardSkills extends StatelessWidget {
  const CardSkills({
    super.key,
    required this.title,
    required this.amount,
    required this.img,
  });

  final String title;
  final double amount;
  final String img;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 4, // Controla la intensidad del BoxShadow
      shadowColor: primary.withOpacity(0.15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17.5),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Image.asset(
                assetImgSkills + img,
              ),
            ),
            Flexible(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Epilogue",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        assetImgSkills + 'dollar.svg',
                        color: textColor,
                        width: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        amount.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: textBlack,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Epilogue",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
