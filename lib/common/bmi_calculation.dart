class BmiCalculation {
  static double bmi(int weight, double height) {
    return (weight / (height * height));
  }

  static String condition(double bmiIndex) {
    if (bmiIndex < 16.0) {
      return 'Severely Underweight';
    } else if (bmiIndex >= 16.0 && bmiIndex <= 18.4) {
      return 'Underweight';
    } else if (bmiIndex >= 18.5 && bmiIndex <= 24.9) {
      return 'Normal';
    } else if (bmiIndex >= 25.0 && bmiIndex <= 29.9) {
      return 'Overweight';
    } else if (bmiIndex >= 30.0 && bmiIndex <= 34.9) {
      return 'Moderately Obese';
    } else if (bmiIndex >= 35.0 && bmiIndex <= 39.9) {
      return 'Severely Obese';
    } else {
      return 'Morbidly Obese';
    }
  }
}
