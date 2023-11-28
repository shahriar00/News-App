import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatefulWidget {
  String blogUrl;
  ArticleWebView({required this.blogUrl});

  @override
  State<ArticleWebView> createState() => _ArticleWebViewState();
}

class _ArticleWebViewState extends State<ArticleWebView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text(
          "News App",
          style: GoogleFonts.openSans(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: WebView(
        initialUrl: widget.blogUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
