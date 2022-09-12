import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).secondaryHeaderColor),
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          "Fifa News",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://www.fifa.com/fifaplus/en/news",
          onWebViewCreated: (controller) {
            this.controller = controller;
          }),
    );
  }
}
