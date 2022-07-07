// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/theme.dart';

import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/green_button.dart';
import 'package:flutter/material.dart';

const defaultMargin = 24.0;

enum Gender { male, female }

class MobilePage extends StatefulWidget {
  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  Color maleInputColor = inactiveColor;
  Color femaleInputColor = inactiveColor;

  int weight = 56;
  int height = 162;
  int ageValue = 29;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000002),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(defaultMargin),
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'BMI Calculator',
                style: poppinsTextStyle.copyWith(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Gender',
                style: poppinsTextStyle,
              ),
              Row(
                children: [
                  Expanded(
                    child: GenderWidget(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      genderIcon: Icons.man,
                      genderName: 'Male',
                      warna: selectedGender == Gender.male
                          ? activeColor
                          : inactiveColor,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GenderWidget(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      genderIcon: Icons.woman,
                      genderName: 'Female',
                      warna: selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor,
                    ),
                  )
                ],
              ),
              // NOTE: WEIGHT INPUT WIDGET
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WEIGHT',
                      style: poppinsTextStyle,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  weight.toString(),
                                  style: poppinsTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                'kg',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // NOTE: HEIGHT INPUT WIDGET
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HEIGHT',
                      style: poppinsTextStyle,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      height--;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  height.toString(),
                                  style: poppinsTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      height++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                'cm',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // NOTE: AGE INPUT WIDGET
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Age',
                      style: poppinsTextStyle,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                ageValue--;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            ageValue.toString(),
                            style: poppinsTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                ageValue++;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // NOTE: CALCULATE BUTTON
              GreenButton(
                buttonFunction: 'Calculate',
                onTap: () {
                  Calculator calc = Calculator(weight: weight, height: height);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => ResultPage(
                        hitungBMI: calc.hitungBMI(),
                        dapatkanHasil: calc.getResult(),
                        dapatkanDesk: calc.getDescription(),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
