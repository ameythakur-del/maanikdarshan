import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maanikdarshan/components/customAppBar.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Detail extends StatefulWidget {
  final String url;
  const Detail({Key? key, required this.url}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: ManikDarshan(title: 'माणिकरत्न'),
      body: WebView(initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
        _webViewController = webViewController;
        _controller.complete(webViewController);
      },
        onProgress: (int progress) {
          print("WebView is loading (progress : $progress%)");
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');

          // Removes header and footer from page
          _webViewController.runJavascript(
              "document.getElementsByTagName('header')[0].style.display='none'");
          _webViewController.runJavascript(
              "document.getElementsByTagName('footer')[0].style.display='none'");
        },),
    );
  }
}
