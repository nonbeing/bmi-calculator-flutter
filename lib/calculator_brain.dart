import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map<String, String> getResults() {
    if (_bmi > 30)
      return {
        'result': 'Obese',
        'interpretation':
            'You have a higher body weight than normal and are at increased risk of associated health problems. Try to lose some weight by a suitable diet and exercise.'
      };
    else if (_bmi > 25 && _bmi < 30)
      return {
        'result': 'Overweight',
        'interpretation':
            'You have a higher body weight than normal. Try to lose some weight by a suitable diet and exercise.'
      };
    else if (_bmi > 18.5 && _bmi < 25)
      return {
        'result': 'Normal',
        'interpretation': 'You have a normal body weight. Keep it up!'
      };
    else
      return {
        'result': 'Underweight',
        'interpretation':
            'You have a lower body weight than normal. Try to gain some weight by a suitable diet and exercise.'
      };
  }
}
