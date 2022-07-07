import 'dart:math';

class Calculator {
  final int weight;
  final int height;

  Calculator({required this.weight, required this.height});

  double? _bmi;

  String hitungBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription() {
    if (_bmi! >= 25) {
      return 'Cobalah untuk melakukan beberapa olahraga. Berat badanmu lebih dari normal';
    } else if (_bmi! > 18) {
      return 'Well done bestie, berat badanmu normal';
    } else {
      return 'Wah, berat tubuhmu dibawah normal. Cobalah untuk makan lebih banyak';
    }
  }
}
