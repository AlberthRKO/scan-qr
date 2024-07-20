import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/colors.dart';
import '../utils/complemento.dart';

class TextFormCustom extends StatefulWidget {
  const TextFormCustom({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    this.controller,
    this.readOnlyField = false,
    this.isPassword = false,
    this.iconHeight = 17.0,
    this.maxLine = 1,
    this.height = 50.0,
    this.keyboardType,
    this.iconColor = primary,
    this.onChageFunction,
    required this.onChanged,
    this.validator,
    this.valor,
    this.inputFormatters,
    this.isNumber,
    this.blockedViewPass = false,
  });

  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final String prefixIcon;
  final String? valor;
  final double iconHeight;
  final String labelText;
  final TextEditingController? controller;
  final bool isPassword;
  final bool readOnlyField;
  final int maxLine;
  final double height;
  final TextInputType? keyboardType;
  final Color? iconColor;
  final dynamic onChageFunction;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isNumber;
  final bool blockedViewPass;
  @override
  State<TextFormCustom> createState() => _TextFormCustomState();
}

class _TextFormCustomState extends State<TextFormCustom> {
  bool _isViewPass = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50.0,
          width: 40.0,
          // color: grey,
          alignment: Alignment.center,
          child: SvgPicture.asset(
            assetImg + widget.prefixIcon,
            height: widget.iconHeight,
            // ignore: deprecated_member_use
            color: widget.iconColor,
          ),
        ),
        const SizedBox(width: 5),
        Flexible(
          child: TextFormField(
            onChanged: (text) {
              widget.onChanged(text);
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: widget.isNumber == true
                ? TextInputType.number
                : widget.isNumber == false
                    ? TextInputType.numberWithOptions(decimal: true)
                    : widget.keyboardType,
            inputFormatters: widget.isNumber == true
                ? <TextInputFormatter>[
                    FilteringTextInputFormatter
                        .digitsOnly // Acepta únicamente dígitos
                  ]
                : widget.isNumber == false
                    ? <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^\d+\.?\d{0,2}'))
                      ]
                    : widget.inputFormatters,
            readOnly: widget.readOnlyField,
            obscureText: widget.isPassword
                ? widget.blockedViewPass
                    ? true
                    : _isViewPass
                : false,
            controller: widget.controller,
            initialValue: widget.valor,
            maxLines: widget.maxLine == 0 ? null : widget.maxLine,
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
              suffixIcon: widget.isPassword
                  ? (widget.blockedViewPass ? null : togglePass())
                  : null,
            ),
            validator: (text) {
              return widget.validator == null ? null : widget.validator!(text);

              /* if (widget.isPassword) {
                text = text?.replaceAll(' ', '') ?? '';
                if (text.isEmpty) return "Empty Password";
                if (text.length < 4) return "Invalid Password";
              } else {
                text = text?.trim().toLowerCase() ?? '';
                if (text.isEmpty) return "Invalid Password";
              }
              return null; */
            },
          ),
        ),
      ],
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
      color: primary.withOpacity(.5),
      iconSize: 20,
    );
  }
}

class SwitchCustom extends StatefulWidget {
  const SwitchCustom(
      {super.key,
      required this.text,
      this.valor = false,
      required this.onChanged});

  final String text;
  final bool valor;
  final void Function(bool) onChanged;

  @override
  State<SwitchCustom> createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            color: secondary.withOpacity(0.5),
            fontSize: 12,
          ),
        ),
        Switch(
          activeColor: primary,
          value: widget.valor,
          onChanged: (value) {
            widget.onChanged(value);
          },
        ),
      ],
    );
  }
}

class SwitchCustom2 extends StatefulWidget {
  const SwitchCustom2(
      {super.key,
      required this.text,
      this.valor = false,
      required this.onChanged});

  final String text;
  final bool valor;
  final void Function(bool) onChanged;

  @override
  State<SwitchCustom2> createState() => _SwitchCustom2State();
}

class _SwitchCustom2State extends State<SwitchCustom2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: secondary.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
            Switch(
              activeColor: primary,
              value: widget.valor,
              onChanged: (value) {
                widget.onChanged(value);
              },
            ),
          ],
        ),
      ],
    );
  }
}

// Field para buscar
class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    this.controller,
    this.readOnlyField = false,
    this.isPassword = false,
    this.iconHeight = 17.0,
    this.maxLine = 1,
    this.height = 50.0,
    this.keyboardType,
    this.iconColor = primary,
    this.onChageFunction,
    required this.onChanged,
    this.validator,
    this.valor,
    this.inputFormatters,
    this.isNumber,
    this.search = true,
  });

  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final String prefixIcon;
  final String? valor;
  final double iconHeight;
  final String labelText;
  final TextEditingController? controller;
  final bool isPassword;
  final bool readOnlyField;
  final int maxLine;
  final double height;
  final TextInputType? keyboardType;
  final Color? iconColor;
  final dynamic onChageFunction;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isNumber;
  final bool search;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 5,
        ),
        Container(
          height: 50.0,
          width: 40.0,
          alignment: Alignment.center,
          child: SvgPicture.asset(
            assetImg + prefixIcon,
            height: iconHeight,
            // ignore: deprecated_member_use
            color: iconColor,
          ),
        ),
        const SizedBox(width: 5),
        Flexible(
          child: TextFormField(
            onChanged: (text) {
              onChanged(text);
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: keyboardType,
            readOnly: readOnlyField,
            // obscureText: .isPassword ? _isViewPass : false,
            // controller: widget.controller,
            initialValue: valor ?? '',
            maxLines: 1,
            style: const TextStyle(
              fontSize: 14.0,
              color: secondary,
              fontWeight: FontWeight.w500,
            ),
            cursorColor: secondary,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labelText,
              labelStyle: TextStyle(
                color: secondary.withOpacity(0.5),
                fontSize: 15.0,
                height: 1,
              ),
              suffixIcon: search
                  ? Icon(
                      Icons.search,
                      color: primary,
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
  /* Widget togglePass() {
    return IconButton(
      onPressed: () {
      },
      icon: _isViewPass ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
      color: primary.withOpacity(.5),
      iconSize: 20,
    );
  } */
}
