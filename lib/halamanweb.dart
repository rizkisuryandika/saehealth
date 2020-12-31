import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HalamanWeb extends StatefulWidget {
  final url;

  HalamanWeb(this.url);

  @override
  _HalamanWebState createState() => _HalamanWebState(this.url);
}

class _HalamanWebState extends State<HalamanWeb> {
  var _url;
  final _key = UniqueKey();

  _HalamanWebState(this._url);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(),
        body: SafeArea(child: 
         Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url))
          ],
        )));
  }
}