// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/theme.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/green_button.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  int weight = 58;
  int height = 162;
  int ageValue = 29;
  Gender? selectedGender;

  String hitungBMI = '-';
  String dapatkanHasil = '-';
  String dapatkanDesk = '-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333335),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'BMI CALCULATOR',
                style: poppinsTextStyle.copyWith(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: Color(0xff000002),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(5, 6),
                          blurRadius: 0.5)
                    ]),
                child: Row(
                  children: [
                    // NOTE: CALCULATION WIDGET
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                // NOTE: CHOOSE GENDER WIDGET
                                Expanded(
                                  flex: 1,
                                  child: GenderWidget(
                                      onPress: () {
                                        setState(() {
                                          selectedGender = Gender.male;
                                        });
                                      },
                                      warna: selectedGender == Gender.male
                                          ? activeColor
                                          : inactiveColor,
                                      genderIcon: Icons.man,
                                      genderName: 'Male'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: GenderWidget(
                                      onPress: () {
                                        setState(() {
                                          selectedGender = Gender.female;
                                        });
                                      },
                                      warna: selectedGender == Gender.female
                                          ? activeColor
                                          : inactiveColor,
                                      genderIcon: Icons.woman,
                                      genderName: 'Female'),
                                ),
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
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                style:
                                                    poppinsTextStyle.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                style:
                                                    poppinsTextStyle.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                            // NOTE: GREEN BUTTON
                            GreenButton(
                              buttonFunction: 'Calculate',
                              onTap: () {
                                Calculator calc =
                                    Calculator(weight: weight, height: height);
                                setState(() {
                                  hitungBMI = calc.hitungBMI();
                                  dapatkanHasil = calc.getResult();
                                  dapatkanDesk = calc.getDescription();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    // NOTE: RESULT WIDGET
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'RESULT',
                                style: poppinsTextStyle.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(left: 24),
                                padding: EdgeInsets.all(24),
                                decoration: BoxDecoration(
                                  color: Color(0xff333335),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dapatkanHasil,
                                        style: poppinsTextStyle.copyWith(
                                            fontSize: 17, color: activeColor),
                                      ),
                                      Text(
                                        hitungBMI,
                                        style: poppinsTextStyle.copyWith(
                                            fontSize: 95,
                                            fontWeight: FontWeight.bold),
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
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ]),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        dapatkanDesk,
                                        style: poppinsTextStyle.copyWith(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
