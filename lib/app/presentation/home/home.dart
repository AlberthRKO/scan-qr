import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_scan/app/presentation/home/browser_view.dart';
import 'package:qr_scan/app/presentation/home/home_scan.dart';

class HomeQR extends StatefulWidget {
  const HomeQR({Key? key}) : super(key: key);

  @override
  State<HomeQR> createState() => _HomeQRState();
}

class _HomeQRState extends State<HomeQR> {
  bool error = false;
  final GlobalKey qrKey = GlobalKey(debugLabel: "QR");
  Barcode? result;
  QRViewController? controller;
  bool isNavigating = false; // Añadido para evitar navegación múltiple

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          error
              ? SizedBox()
              : Expanded(
                  flex: 5,
                  child: QRView(
                    key: qrKey,
                    onQRViewCreated: _onQrViewCreated,
                  ),
                ),
          Expanded(
            child: Center(
              child: result != null
                  ? Text("QR SCAN: ${result!.code}")
                  : Text("Scan a code"),
            ),
          ),
        ],
      ),
    );
  }

  void _onQrViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
        _validateAndLaunch(result!.code.toString());
      });
    });
  }

  void _validateAndLaunch(String scannedData) {
    final Uri? uri = Uri.tryParse(scannedData);
    if (uri != null && (uri.isScheme("http") || uri.isScheme("https"))) {
      if (!isNavigating) {
        // Verifica si ya se está navegando
        isNavigating = true;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _launchBrowser(uri);
        });
      }
    } else {
      _showErrorModal();
    }
  }

  void _launchBrowser(Uri uri) {
    Navigator.of(context)
        .pushReplacement(
      MaterialPageRoute(
        builder: (context) => BrowserView(url: uri.toString()),
      ),
    )
        .then((_) {
      // Marca la navegación como completada después de que se regrese a esta vista.
      setState(() {
        isNavigating = false;
      });
    });
  }

  void _showErrorModal() {
    setState(() {
      error = true;
    });
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text("Error"),
          content: Text("El QR escaneado no es una URL válida."),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  error = false;
                });
                Navigator.of(context).pop();
              },
              child: Text("Vuelva a intentar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScan()),
                );
              },
              child: Text("Cancelar"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
