import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  WebViewPage(this._url);

  final String _url;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: WebView(initialUrl: _url));
  }
}
