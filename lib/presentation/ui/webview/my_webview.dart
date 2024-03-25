import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewBottomSheetDialog extends StatelessWidget {
  final String initialUrl;

  const WebViewBottomSheetDialog({required this.initialUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: WebView(
                    initialUrl: initialUrl,
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                ),
              ],
            ),

      ),
    );
  }
}

