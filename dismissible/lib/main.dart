import 'package:flutter/material.dart';
import 'demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '左滑删除Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}