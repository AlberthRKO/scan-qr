// import 'package:elearningui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({
    Key? key,
    required this.title,
    this.title2 = "",
    required this.subTitle,
    required this.color,
    this.color2 = primary,
    this.centro = false,
    this.fonsizeTitle = 20.0,
    this.fonsizesubTitle = 14.0,
  }) : super(key: key);

  final String title;
  final String title2;
  final String subTitle;
  final Color color;
  final Color color2;
  final bool centro;
  final double fonsizeTitle;
  final double fonsizesubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          (centro) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: fonsizeTitle,
                fontWeight: FontWeight.bold,
              ),
              textAlign: centro ? TextAlign.center : TextAlign.left,
            ),
            Text(
              title2,
              style: TextStyle(
                color: color2,
                fontSize: fonsizeTitle,
                fontWeight: FontWeight.bold,
              ),
              textAlign: centro ? TextAlign.center : TextAlign.left,
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Text(
          subTitle,
          style: TextStyle(
            color: color,
            fontSize: fonsizesubTitle,
          ),
          textAlign: centro ? TextAlign.center : TextAlign.left,
        ),
      ],
    );
  }
}

class CustomHeading2 extends StatelessWidget {
  const CustomHeading2({
    Key? key,
    required this.title,
    this.title2 = "",
    required this.subTitle,
    required this.color,
    this.color2 = const Color(0xFF2EA5FF),
    this.centro = false,
    this.fonsizeTitle = 20.0,
    this.fonsizesubTitle = 14.0,
  }) : super(key: key);

  final String title;
  final String title2;
  final String subTitle;
  final Color color;
  final Color color2;
  final bool centro;
  final double fonsizeTitle;
  final double fonsizesubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          (centro) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          subTitle,
          style: TextStyle(
            color: color,
            fontSize: fonsizesubTitle,
          ),
          textAlign: centro ? TextAlign.center : TextAlign.left,
        ),
        const SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: fonsizeTitle,
                fontWeight: FontWeight.w700,
              ),
              textAlign: centro ? TextAlign.center : TextAlign.left,
            ),
            Text(
              title2,
              style: TextStyle(
                color: color2,
                fontSize: fonsizeTitle,
                fontWeight: FontWeight.w700,
              ),
              textAlign: centro ? TextAlign.center : TextAlign.left,
            ),
          ],
        ),
      ],
    );
  }
}
