import 'dart:math';

 class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

   double _bmi;
  String calculateBMI(){
    _bmi = weight / pow(height/ 100, 2);
    return _bmi.toStringAsFixed(1);

  }
  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if (_bmi > 18.5){
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Ah you are too fat. You are eating food meant for 5 people abi?';
    }
    else if (_bmi >= 18.5){
      return 'Kai see as you are normal, your mates that are underweight or overweight do they have 2 heads?';
    }
    else {
      return 'Ah you are too thin shey you no dey eat ni?' ;
    }
  }
  }
