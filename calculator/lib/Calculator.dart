class Calculator {
  String num1 = "";
  String num2 = "";
  String operator = "";
  List<String> savedOperations =[];
  double ans = 0;
  bool isSecond = false;
  String get displayText {
    if (num1.isEmpty) return "0";
    return "$num1 $operator $num2";
  }

  void inputDigit(String digit) {
    if (isSecond) {
      num2 += digit;
    } else {
      if (num1 == ans.toString()) {
        num1 = "";
        ans = 0;
      }
      num1 += digit;
    }
  }

  void inputOperator(String op) {
    if (num1.isNotEmpty && !isSecond) {
      operator = op;
      isSecond = true;
    }
  }

  void calculate() {
    if (num1.isNotEmpty && num2.isNotEmpty && operator.isNotEmpty) {
      double x = double.parse(num1);
      double y = double.parse(num2);
      switch (operator) {
        case "+":
          ans = x + y;
          break;
        case "-":
          ans = x - y;
          break;
        case "x":
          ans = x * y;
          break;
        case "/":
          if (y == 0) return;
          ans = x / y;
          break;
        case "%":
          ans = x % y;
          break;
        case "1/x":
          ans = 1 / x;
          break;
        case "x²":
          ans = x * x;
          break;
      }
      savedOperations.add("$num1 $operator $num2 = $ans");
      num1 = ans.toString();
      num2 = "";
      operator = "";
      isSecond = false;
    }
  }

  void clear() {
    num1 = "";
    num2 = "";
    operator = "";
    ans = 0;
    isSecond = false;
  }

  void clearCurrentElement() {
    if (isSecond) {
      num2 = "";
    } else {
      num1 = "";
    }
  }

  void deleteDigit() {
    if (isSecond) {
      num2 = num2.isNotEmpty ? num2.substring(0, num2.length - 1) : "";
    } else {
      num1 = num1.isNotEmpty ? num1.substring(0, num1.length - 1) : "";
    }
  }
}
// need to be solved
// one operand
// many .. in same num
//  /0