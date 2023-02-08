import 'dart:math';

class Calculator {
  Calculator({required this.weight, required this.height});

  final int height;
  final int weight;
  // Damit die getResult-Funktion Zugriff auf den benötigten Wert hat,
  // brauchen wir eine entsprechende Variable; um sie mit dem richtigen
  // Wert initialisieren zu können, verwenden wir "get" mit der entsprechenden
  // Funktion. Falls wir sie anders zu initialisieren versuchen, wird sie nicht
  // für die anderen Methoden geupdated und die Null-Safety grätscht uns rein.
  double get _bmi => weight / pow(height / 100, 2);

  String getBMI() {
    return _bmi.toStringAsFixed(1);
    // return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Fat Fuck!';
    } else if (_bmi >= 18.5) {
      return 'Boringly normal!';
    } else {
      return 'KZ-Model?';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You\'re either a fat slob or a juiced-up \'roidhead. Either way, what the hell is wrong with you? You\'re fucking disgusting!';
    } else if (_bmi >= 18.5) {
      return 'You are so fucking boring, why the fuck do you even use a BMI Calculator when there is nothing interesting to calculate??';
    } else {
      return 'Congrats, Himmler would be fucking proud of you. Go eat a fucking pizza, holy shit...!';
    }
  }
}
