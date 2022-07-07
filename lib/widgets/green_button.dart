// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/theme.dart';
import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String buttonFunction;
  final VoidCallback onTap;
  GreenButton({required this.onTap, required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 25),
        padding: EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff06c46c),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            buttonFunction,
            style: poppinsTextStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
