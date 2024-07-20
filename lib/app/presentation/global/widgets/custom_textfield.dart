import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/colors.dart';
import '../theme/padding.dart';
import '../utils/complemento.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.prefixIcon,
    required this.labelText,
    this.controller,
    this.readOnlyField = false,
    this.isPassword = false,
    this.iconHeight = 17.0,
    this.maxLine = 1,
    this.height = 50.0,
    this.keyboardType,
    this.iconColor,
  }) : super(key: key);
  final String prefixIcon;
  final double iconHeight;
  final String labelText;
  final TextEditingController? controller;
  final bool isPassword;
  final bool readOnlyField;
  final int maxLine;
  final double height;
  final TextInputType? keyboardType;
  final Color? iconColor;

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isViewPass = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: secondary.withOpacity(0.25), width: 0.5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            // color: grey,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              assetImg + widget.prefixIcon,
              height: widget.iconHeight,
              // ignore: deprecated_member_use
              color: widget.iconColor,
            ),
          ),
          const SizedBox(width: miniSpacer),
          Flexible(
            child: TextFormField(
              // onTap: () {},
              keyboardType: widget.keyboardType,
              readOnly: widget.readOnlyField,
              obscureText: widget.isPassword ? _isViewPass : false,
              controller: widget.controller,
              maxLines: widget.maxLine,
              style: const TextStyle(
                fontSize: 14.0,
                color: secondary,
                fontWeight: FontWeight.w500,
              ),
              cursorColor: secondary,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: widget.labelText,
                labelStyle: TextStyle(
                  color: secondary.withOpacity(0.5),
                  fontSize: 15.0,
                  height: 1,
                ),
                suffixIcon: widget.isPassword ? togglePass() : null,
              ),
              validator: (text) {
                if (widget.isPassword) {
                  text = text?.replaceAll(' ', '') ?? '';
                  if (text.isEmpty) return "Empty Password";
                  if (text.length < 4) return "Invalid Password";
                } else {
                  text = text?.trim().toLowerCase() ?? '';
                  if (text.isEmpty) return "Invalid Username";
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget togglePass() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isViewPass = !_isViewPass;
        });
      },
      icon: _isViewPass ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
