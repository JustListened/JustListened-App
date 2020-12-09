import 'package:flutter/material.dart';

class AppSpacer extends StatelessWidget {
  AppSpacer({this.height = 1});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(height: height);
  }
}
