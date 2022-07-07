// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/theme.dart';
import 'package:bmi_calculator/widgets/green_button.dart';
import 'package:flutter/material.dart';

const defaultMargin = 24.0;

class ResultPage extends StatelessWidget {
  final String hitungBMI;
  final String dapatkanHasil;
  final String dapatkanDesk;

  ResultPage(
      {required this.hitungBMI,
      required this.dapatkanHasil,
      required this.dapatkanDesk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000002),
      appBar: AppBar(
        backgroundColor: Color(0xff000002),
        elevation: 2,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: poppinsTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(defaultMargin),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'RESULT',
                  style: poppinsTextStyle.copyWith(fontSize: 40),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                padding: EdgeInsets.all(defaultMargin),
                decoration: BoxDecoration(
                  color: Color(0xff333335),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dapatkanHasil,
                      style: poppinsTextStyle.copyWith(
                          fontSize: 17, color: activeColor),
                    ),
                    Text(
                      hitungBMI,
                      style: poppinsTextStyle.copyWith(
                          fontSize: 95, fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'Normal BMI range:\n',
                          style: poppinsTextStyle.copyWith(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '18,5 - 25 kg/m2',
                          style: poppinsTextStyle.copyWith(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ]),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      dapatkanDesk,
                      style: poppinsTextStyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GreenButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  buttonFunction: 'RE-CALCULATE')
            ],
          ),
        ),
      ),
    );
  }
}
