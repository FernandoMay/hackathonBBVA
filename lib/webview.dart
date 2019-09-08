import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: WebView(
        initialUrl: 'https://cmgs.gob.mx:31/agroclimas/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
