// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_app_bar_links.dart';

// typedef EitherResetPass = Either<HttpRequestFailure, void>;

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoColor,
      appBar: PreferredSize(
        child: CustomAppBarLinks(
          title: 'Users',
        ),
        preferredSize: Size.fromHeight(70),
      ),
      body: Center(
        child: Text("Users"),
      ),
    );
  }
}
