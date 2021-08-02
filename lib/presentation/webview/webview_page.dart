import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// class WebViewPage extends StatelessWidget {
//   WebViewPage(this._url);
//
//   final String _url;
//
//   @override
//   Widget build(BuildContext context) {
//     // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
//     return WebViewPage(_url);
//     // return Text(_url);
//   }
// }

class WebViewPage extends StatefulWidget {
  WebViewPage(this._url);

  final String _url;

  @override
  _WebViewPageState createState() => _WebViewPageState(_url);
}

class _WebViewPageState extends State<WebViewPage> {
  _WebViewPageState(this._url);

  final String _url;

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: WebViewPage(_url));
    return Scaffold(body: WebViewPage('https://flutter.dev'));
  }
}
