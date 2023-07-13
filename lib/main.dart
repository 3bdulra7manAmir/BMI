import 'package:flutter/material.dart';
import 'package:flutter_test_area/screens/home.dart';

void main()
{
  runApp(const MainApp());
}

class MainApp extends StatelessWidget
{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
