// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_app_bar_links.dart';

// typedef EitherResetPass = Either<HttpRequestFailure, void>;

class System extends StatefulWidget {
  const System({super.key});

  @override
  State<System> createState() => _SystemState();
}

class _SystemState extends State<System> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoColor,
      appBar: PreferredSize(
        child: CustomAppBarLinks(
          title: 'Systems',
        ),
        preferredSize: Size.fromHeight(70),
      ),
      body: Center(
        child: Text("Systems"),
      ),
    );
  }
}
