import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';

class ButtonsCustom extends StatelessWidget {
  const ButtonsCustom(
      {super.key,
      required this.title,
      required this.icono,
      this.color = primary,
      this.funcion});
  final String title;
  final IconData icono;
  final Color color;
  final void Function()? funcion;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funcion,
      child: Container(
        height: 50,
        width: 250,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color.withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 0.0,
              blurRadius: 6.0,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              color: textWhite,
              size: 25,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(
                color: textWhite,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: "Epilogue",
                // fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
