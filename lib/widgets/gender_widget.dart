// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final IconData genderIcon;
  final String genderName;
  final Color warna;
  final VoidCallback onPress;

  GenderWidget(
      {required this.onPress,
      required this.warna,
      required this.genderIcon,
      required this.genderName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: Color(0xff333335),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: warna,
              )),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      genderIcon,
                      color: Colors.white,
                      size: 130,
                    ),
                    Text(
                      genderName,
                      style: poppinsTextStyle,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.check_circle,
                    color: warna,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
