// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:bmi_calculator/modules/bmi_result/bmi_result_Screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMAle = true;
  double height = 120.0;
  int wieght = 40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMAle = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: isMAle ? Colors.blue : Colors.grey[300]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.access_alarms_rounded,
                        //   size: 50,
                        // ),
                        Image(
                          image: AssetImage('assets/images/Male.png'),
                          width: 90.0,
                          height: 90.0,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMAle = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: !isMAle ? Colors.blue : Colors.grey[300]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.access_alarms_rounded,
                        //   size: 50,
                        // ),
                        Image(
                          image: AssetImage('assets/images/female.png'),
                          width: 90.0,
                          height: 90.0,
                        ),

                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[300]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${height.round()}",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "CM",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                        print(value.round());
                      })
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[300]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${age}",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'age-',
                              onPressed: () {
                                setState(() {
                                  age = age - 1;
                                });
                              },
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              heroTag: 'age+',
                              onPressed: () {
                                setState(() {
                                  age = age + 1;
                                });
                              },
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[300]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WIEGHT",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${wieght}",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'wieght-',
                              onPressed: () {
                                setState(() {
                                  wieght = wieght - 1;
                                });
                              },
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              heroTag: 'wieght+',
                              onPressed: () {
                                setState(() {
                                  wieght = wieght + 1;
                                });
                              },
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              height: 50.0,
              onPressed: () {
                var result = wieght / pow(height / 100, 2);
                print(result.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIResultScreen(
                        result: result,
                        age: age,
                        isMAle: isMAle,
                      ),
                    ));
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ]),
    );
  }
}
