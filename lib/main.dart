// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/pages/mobile_page.dart';
import 'package:bmi_calculator/pages/tablet_page.dart';
import 'package:bmi_calculator/pages/web_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MobilePage();
        } else if (constraints.maxWidth <= 900) {
          return TabletPage();
        } else {
          return WebPage();
        }
      }),
    );
  }
}
