import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  late double result;
  late bool isMAle;
  late int age;

  BMIResultScreen({
    required this.result,
    required this.isMAle,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result Screen'),
      
      leading:IconButton(
        onPressed: (){
          Navigator.pop(context);
          
          }
          ,icon:  Icon(Icons.arrow_back),
     ) ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender: ${isMAle ? 'Male' : 'Female'}',
              style: TextStyle(fontSize: 25.5, fontWeight: FontWeight.bold),
            ),
            Text(
              'Result: ${result.round()}',
              style: TextStyle(fontSize: 25.5, fontWeight: FontWeight.bold),
            ),
            Text(
              'Age: ${age}',
              style: TextStyle(fontSize: 25.5, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
