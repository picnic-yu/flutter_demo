import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('开动介绍后'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            '介绍后页面',
            style: TextStyle(
              fontSize: 35.0,
            ),
          ),
        ),
      ),
    );
  }
}