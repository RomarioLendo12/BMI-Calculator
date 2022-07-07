// ignore_for_file: prefer_const_constructors
import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/theme.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/green_button.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class TabletPage extends StatefulWidget {
  @override
  _TabletPageState createState() => _TabletPageState();
}

class _TabletPageState extends State<TabletPage> {
  int height = 162;
  int weight = 58;
  int age = 29;

  String hitungBMI = '-';
  String dapatkanHasil = '-';
  String dapatkanDesk = '-';

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000002),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NOTE: HEADER
              Center(
                child: Text(
                  'BMI CALCULATOR',
                  style: poppinsTextStyle.copyWith(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  // NOTE: CHOOSE GENDER WIDGET
                  Expanded(
                    flex: 2,
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
                    flex: 2,
                    child: GenderWidget(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        warna: selectedGender == Gender.female
                            ? activeColor
                            : inactiveColor,
                        genderIcon: Icons.female,
                        genderName: 'Female'),
                  ),
                  // NOTE: INPUT WEIGHT WIDGET
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          'kg',
                          style: poppinsTextStyle.copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                weight.toString(),
                                style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // NOTE: INPUT HEIGHT WIDGET
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          'cm',
                          style: poppinsTextStyle.copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                height.toString(),
                                style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // NOTE: INPUT AGE WIDGET
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          'age',
                          style: poppinsTextStyle.copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
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
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                age.toString(),
                                style: poppinsTextStyle.copyWith(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // NOTE: BUTTON WIDGET
              GreenButton(
                  onTap: () {
                    Calculator calc =
                        Calculator(weight: weight, height: height);

                    setState(() {
                      hitungBMI = calc.hitungBMI();
                      dapatkanHasil = calc.getResult();
                      dapatkanDesk = calc.getDescription();
                    });
                  },
                  buttonFunction: 'CALCULATE'),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'RESULT',
                  style: poppinsTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // NOTE : RESULT WIDGET
              Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff333335),
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
                        height: 20,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
