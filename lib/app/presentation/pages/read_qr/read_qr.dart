import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:qr_scan/app/presentation/global/widgets/custom_app_bar_links.dart';

class ReadQR extends StatefulWidget {
  const ReadQR({super.key});

  @override
  State<ReadQR> createState() => _ReadQRState();
}

class _ReadQRState extends State<ReadQR> {
  String _scanBarResult = "";

  Future<void> scanBarCodeNormal() async {
    String barCodeScan;
    try {
      barCodeScan = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      debugPrint(barCodeScan);
    } on PlatformException {
      barCodeScan = "Failed to get platform version.";
    }
    if (!mounted) return;
    setState(() {
      _scanBarResult = barCodeScan;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoColor,
      appBar: PreferredSize(
        child: CustomAppBarLinks(
          title: 'Settings Server',
        ),
        preferredSize: Size.fromHeight(70),
      ),
      body: Builder(
        builder: (context) => Container(
          alignment: Alignment.center,
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: scanBarCodeNormal,
                child: Text("Scan Bar Code"),
              ),
              Text("IP Server Scan  : $_scanBarResult\n"),
            ],
          ),
        ),
      ),
    );
  }
}
