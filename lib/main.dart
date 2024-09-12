import 'dart:ui';

import 'package:bmi_calculator/pages/bmi_calculator.dart';
import 'package:bmi_calculator/pages/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BMIProvider(),
        ),
      ],

      child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MBI Calculator",
      home: BmiCalculator(),
    ),
    );
    
  }
}
