import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  const BMIResultScreen({super.key, required this.gender, required this.age, required this.weight, required this.result, required this.height});

final String gender;
final int age;
final int weight;
final double height;
final double result;

  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Gender : $gender", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text("Age : $age", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text("Weight : $weight", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text("Height : $height", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text("Result : ${result.round()}", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ],
      ),
    ),
    ),  
    );
  }
}