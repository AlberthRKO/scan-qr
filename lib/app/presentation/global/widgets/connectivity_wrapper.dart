import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConnectivityWrapper extends StatefulWidget {
  final Widget child;

  const ConnectivityWrapper({required this.child});

  @override
  State<ConnectivityWrapper> createState() => _ConnectivityWrapperState();
}

class _ConnectivityWrapperState extends State<ConnectivityWrapper> {
  late ConnectivityResult connectivity;

  @override
  void initState() {
    super.initState();
    Connectivity().checkConnectivity().then((result) {
      setState(() {
        connectivity = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityResult>(
      create: (context) => Connectivity().onConnectivityChanged,
      initialData: connectivity,
      child: widget.child,
    );
  }
}
