import 'dart:math';

class Calculator {
  String num1 = "0";
  String num2 = "";
  String operator = "";
  String errorMessage = "";
  List<String> savedOperations = [];
  bool isSecond = false;
  bool isCalculated = false;
  bool isSpecialOperator = false;
  bool isError = false;

  String get displayText {
    if (isError) {
      return errorMessage;
    }
    return "$num1 $operator $num2";
  }

  void inputDigit(String digit) {
    if (isError) isError = false;

    if (isSecond) {
      if (num2.length == 15) return;
      num2 += digit;
    } else {
      if (num1.length == 15) return;
      if (num1 == "0" || isCalculated) {
        isCalculated = false;
        num1 = "";
      }
      num1 += digit;
    }
  }

  void inputDecimalPoint() {
    if (isError) isError = false;
    if (isSecond) {
      if (!num2.contains('.')) num2 += ".";
    } else {
      if (!num1.contains('.')) num1 += ".";
    }
  }

  void inputOperator(String op) {
    if (num1.isNotEmpty && !isSecond) {
      operator = op;
      isSecond = true;
    }
  }

  void inputSpecialOperator(String op) {
    if (num1.isNotEmpty && !isSecond) {
      isSpecialOperator = true;
      operator = op;
      calculate();
    }
  }

  void toggleSign() {
    if (isSecond) {
      if (num2.isNotEmpty && num2[0] == '-') {
        num2 = num2.substring(1, num2.length);
      } else {
        num2 = "-$num2";
      }
    } else {
      if (num1.isNotEmpty && num1[0] == '-') {
        num1 = num1.substring(1, num1.length);
      } else {
        num1 = "-$num1";
      }
    }
  }

  void calculate() {
    double? ans = 0;
    if (isSpecialOperator) {
      ans = specialOperation();
      savedOperations.add("$operator ($num1) = $ans");
    } else if (num1.isNotEmpty && num2.isNotEmpty && operator.isNotEmpty) {
      ans = simpleOperation();
      savedOperations.add("$num1 $operator $num2 = $ans");
    } else {
      return;
    }
    if (ans == ans!.toInt()) {
      num1 = ans.toInt().toString();
    } else {
      num1 = ans.toString();
    }
    num2 = "";
    operator = "";
    isSecond = false;
    isCalculated = true;
    isSpecialOperator = false;
  }

  double? specialOperation() {
    double x = double.parse(num1);
    double? ans = 0;
    switch (operator) {
      case "1 /":
        if (x == 0) {
          handleError(0);
          return 0;
        }
        ans = 1 / x;
        break;
      case "sqr":
        ans = pow(x, 2) as double?;
        break;
      case "√":
        if (x < 0) {
          handleError(1);
          return 0;
        }
        ans = sqrt(x);
        break;
    }
    return ans;
  }

  double simpleOperation() {
    double x = double.parse(num1);
    double y = double.parse(num2);
    double ans = 0;
    switch (operator) {
      case "+":
        ans = x + y;
        break;
      case "-":
        ans = x - y;
        break;
      case "×":
        ans = x * y;
        break;
      case "÷":
        if (y == 0) {
          handleError(0);
          return 0;
        }
        ans = x / y;
        break;
      case "%":
        ans = x % y;
        break;
    }
    return ans;
  }

  void clear() {
    num1 = "";
    num2 = "";
    operator = "";
    isError = false;
    isSecond = false;
    isSpecialOperator = false;
  }

  void clearCurrentElement() {
    isError = false;
    if (isSecond) {
      num2 = "";
    } else {
      num1 = "";
    }
  }

  void deleteDigit() {
    isError = false;
    if (isSecond) {
      num2 = num2.isNotEmpty ? num2.substring(0, num2.length - 1) : "";
    } else {
      num1 = num1.isNotEmpty ? num1.substring(0, num1.length - 1) : "";
    }
  }

  void handleError(int type) {
    isError = true;
    switch (type) {
      case 0:
        errorMessage = "Cannot divide by zero";
        break;
      case 1:
        errorMessage = "Invalid input";
        break;
    }
  }
}
