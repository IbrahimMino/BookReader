import 'dart:io';

import 'package:books/core/resource/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewBookPage extends StatefulWidget {
  const WebViewBookPage({super.key});

  @override
  _CustomWebViewState createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<WebViewBookPage> {
  late InAppWebViewController _webViewController;
  late ContextMenu contextMenu;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    contextMenu = ContextMenu(
        menuItems: [
          ContextMenuItem(
              androidId: 1,
              iosId: "1",
              title: "Special",
              action: () async {
                var selectedText = await _webViewController.getSelectedText();
                await _webViewController.clearFocus();
                await _webViewController.evaluateJavascript(
                    source: "window.alert('You have selected: $selectedText')");
              })
        ],
        options: ContextMenuOptions(hideDefaultSystemContextMenuItems: false),
        onCreateContextMenu: (hitTestResult) async {
          print("onCreateContextMenu");
          print(hitTestResult.extra);
          print(await _webViewController.getSelectedText());
        },
        onHideContextMenu: () {
          print("onHideContextMenu");
        },
        onContextMenuActionItemClicked: (contextMenuItemClicked) async {
          var id = (Platform.isAndroid)
              ? contextMenuItemClicked.androidId
              : contextMenuItemClicked.iosId;
          print("onContextMenuActionItemClicked: " +
              id.toString() +
              " " +
              contextMenuItemClicked.title);
        });
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String?>;
    final url = args['url'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.colorAppBar,
          title: const Text(
            'WebView',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Container(
          child:
               WebView(
                  initialUrl: url.toString(),
                  javascriptMode: JavascriptMode.unrestricted,
                  zoomEnabled: true,
                  onPageStarted: (String url){
                  },
                  onPageFinished: (String url) {
                    setState(() {
                      isLoading = false;
                    });
                  },
                )
        ));
  }
}

// WebView(
// initialUrl:  url.toString(),
// javascriptMode: JavascriptMode.unrestricted,
// zoomEnabled: true,
// )

// InAppWebView(
// initialUrlRequest: URLRequest(url: WebUri('https://books.google.co.uz/books/download/Flutter_Investigation_of_Two_Thin_Low_as.epub?id=ZQO0e8NxQlgC&hl=&output=epub&source=gbs_api')),
// contextMenu: contextMenu,
// initialOptions: InAppWebViewGroupOptions(
// crossPlatform: InAppWebViewOptions(
// javaScriptEnabled: true,
// mediaPlaybackRequiresUserGesture: true,
// supportZoom: true,
// useShouldOverrideUrlLoading: true,
// ),
// ),
// initialSettings: InAppWebViewSettings(
// clearCache: true,
// useShouldOverrideUrlLoading: true,
// ),
// onWebViewCreated: (controller) {
// _webViewController = controller;
// },
// ),
