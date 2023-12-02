import 'dart:io';

class calculator {
  double a;
  double b;
  calculator(this.a, this.b);
  Future<double> add() {
    return Future.delayed(Duration(seconds: 5), () => a + b);
  }

  Future<double> subtract() {
    return Future.delayed(Duration(seconds: 5), () => a - b);
  }

  Future<double> product() {
    return Future.delayed(Duration(seconds: 5), () => a * b);
  }

  Future<double> division() {
    return Future.delayed(Duration(seconds: 5), () => a / b);
  }
}

void main() async {
  double? a = double.parse(stdin.readLineSync()!);
  double? b = double.parse(stdin.readLineSync()!);
  calculator z = calculator(a, b);
  try {
    double Add = await z.add();
    double Sub = await z.subtract();
    double Pro = await z.product();
    double Div = await z.division();
    print("Sum = $Add");
    print("Subtraction = $Sub");
    print("Product = $Pro");
    print("Division = $Div");
  } catch (e) {
    print(e);
  }
}
