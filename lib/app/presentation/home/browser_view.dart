import 'package:flutter/material.dart';
import 'package:qr_scan/app/presentation/global/theme/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class BrowserView extends StatefulWidget {
  final String url;

  const BrowserView({required this.url, Key? key}) : super(key: key);

  @override
  State<BrowserView> createState() => _BrowserViewState();
}

class _BrowserViewState extends State<BrowserView> {
  late final WebViewController _controller;
  bool _isLoading = true; // Controla la visibilidad del preloader

  @override
  void initState() {
    super.initState();

    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    _controller = WebViewController.fromPlatformCreationParams(params)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Aquí puedes manejar la barra de progreso si lo deseas.
          },
          onPageStarted: (String url) {
            setState(() {
              _isLoading = true;
            });
            print("Página cargando: $url");
          },
          onPageFinished: (String url) {
            setState(() {
              _isLoading = false;
            });
            print("Página cargada: $url");
          },
          onHttpError: (HttpResponseError error) {
            print("Error HTTP: $error");
          },
          onWebResourceError: (WebResourceError error) {
            print("Error en recurso web: $error");
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));

    // Configuración específica para Android
    if (_controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (_controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        title: Text('Navegador Interno'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _controller.reload();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // WebView
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Text("Soy el texto para editar"),
              ),
              Expanded(
                child: WebViewWidget(
                  controller: _controller,
                ),
              ),
            ],
          ),
          // Preloader
          if (_isLoading)
            Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
