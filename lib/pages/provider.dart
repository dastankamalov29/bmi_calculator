import 'package:flutter/material.dart';

class BMIProvider extends ChangeNotifier {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  double _bmi = 0;
  String _bmiCategory = "";

  double get bmi => _bmi;
  String get bmiCategory => _bmiCategory;
  void calculateBMI() {
    final double height = double.tryParse(heightController.text) ?? 0;
    final double weight = double.tryParse(weightController.text) ?? 0;

    if (height > 0 && weight > 0) {
      _bmi = weight / (height * height) * 10000;

      if (_bmi < 18.5) {
        _bmiCategory = "You have a Under Weight \n (BMI less then 18.5)";
      } else if (_bmi >= 18.5 && _bmi < 24.9) {
        _bmiCategory = "You have a Normal Weight \n (BMI 18.5 -24.9)";
      } else if (_bmi >= 25 && _bmi < 30) {
        _bmiCategory = "You have a Over Weight \n (BMI 25 - 29.9)";
      } 
    } else {
      _bmiCategory = "Obesity \n BMI 30 or higher";
    }
    notifyListeners();
  }
}
