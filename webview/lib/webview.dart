import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main(){
  runApp(new MaterialApp(
    routes: {
      '/':(_) => new WebviewScaffold(
          url: "https://www.jianshu.com/p/fa59d4357260",
          appBar: new AppBar(
            title: new Text("webview"),
          ),
      ),
    },
  ));
}