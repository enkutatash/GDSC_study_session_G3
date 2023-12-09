import 'dart:async';
import 'dart:io';

class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    return num1 / num2;
  }
}

void main() async {
  try {
    Calculator calculator = Calculator();

    stdout.write('Enter the first number: ');
    String? input1 = stdin.readLineSync();
    if (input1 == null) {
      print('Error: Invalid input for the first number.');
      return;
    }
    double num1 = double.parse(input1);

    stdout.write('Enter the second number: ');
    String? input2 = stdin.readLineSync();
    if (input2 == null) {
      print('Error: Invalid input for the second number.');
      return;
    }
    double num2 = double.parse(input2);

    double finalAdd = calculator.add(num1, num2);
    double finalSubtract = calculator.subtract(num1, num2);
    double finalMultiply = calculator.multiply(num1, num2);
    double finalDivide = calculator.divide(num1, num2);

    await Future.delayed(Duration(seconds: 5));
    print('Addition Result: $finalAdd');
    print('Subtraction Result: $finalSubtract');
    print('Multiplication Result: $finalMultiply');
    print('Division Result: $finalDivide');
  } catch (e) {
    print(e);
  }
}