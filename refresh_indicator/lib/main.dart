import 'package:flutter/material.dart';
import 'refresh_demo.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'refresh',
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red
      ),
      home:RefreshDemo()
    );
  }
}