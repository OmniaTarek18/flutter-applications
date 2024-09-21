# Calculator App 

## Overview
A simple calculator built using flutter framework. It allows users to perform basic arithmetic operations with a modern UI inspired by classic calculator designs.

## Features
1. Basic arithmetic operations: (+, -, ÷, %, ×, ², √).
2. Clear (C), clear entry (CE) and backspace (⌫) functionality
3. Toggle between negative and positive.
5. Handle Error (division by zero, avoid overflow and square root of negative numbers).
6. History to show all pervious operations.

## ScreenShots
![image](https://github.com/user-attachments/assets/6608b3d0-7d82-4865-96a9-6859326d06b8)
![image](https://github.com/user-attachments/assets/c95f9e83-ec8d-4917-9863-135954acee6f)
![image](https://github.com/user-attachments/assets/8c597d06-59e0-4021-959f-2a461d6061e9)
![image](https://github.com/user-attachments/assets/644f5adc-ef99-4f58-8bc9-7ed5fae00b1d)

## Architecture
The app is separated into two parts 
1. first part where we include all the logic (calculate functions, display text, ....)
   you can find it in Calculator.dart
   in that class you can find the basic attributes:
```
  String num1 = "0";
  String num2 = "";
  String operator = "";
  String errorMessage = "";
  List<String> savedOperations = [];
  bool isSecond = false;
  bool isCalculated = false;
  bool isSpecialOperator = false;
  bool isError = false;
```
  and the basic methods
```
  void inputDigit(){...}
  void inputOperation(){...}
  void inputSpecialOperation(){...}
  void inputDecimalPoint(){...}
  void toggleSign(){...}
  void calculate(){...}
  void clear(){...}
  void clearCurrentElement(){...}
  void deleteDigit(){...}
  void handleError(){...}
  String get displayText(){...}
```
3. second part where we include all UI design and widgets and set state of all functions where the displayText changes
```
home:
  Scaffold
 └── AppBar
 └── Column
      ├── Display (Text Widget)
      ├── GridView
           ├── Button (TextButton)
           ├── Button (TextButton)
           ├── Button (TextButton)
           └── ...
```

also I resuse the button style by store it in a variable to apply it on all buttons 
## Installation

1. Install dependencies:
```
   flutter pub get
```
2. Run the app:
```
   flutter run
```
