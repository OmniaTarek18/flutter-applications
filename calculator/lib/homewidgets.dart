
import 'package:calculator/history.dart';
import 'package:flutter/material.dart';
import 'calculator.dart';

class GoToHistory extends StatelessWidget {
  const GoToHistory({
    super.key,
    required this.calc,
  });

  final Calculator calc;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      History(arr: calc.savedOperations),
                ),
              )
            },
        icon: const Icon(
          Icons.history_toggle_off,
          color: Colors.white,
        ));
  }
}

class Display extends StatelessWidget {
  const Display({
    super.key,
    required this.calc,
  });

  final Calculator calc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.only(bottom: 30),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(255, 62, 87, 134),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Text(calc.displayText,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({
    super.key,
    required this.calc,
  });

  final Calculator calc;
  final ButtonStyle buttonStyle = TextButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    backgroundColor: Colors.grey[900],
    textStyle: const TextStyle(fontSize: 24), // Text size
    foregroundColor: const Color.fromARGB(255, 211, 218, 238), // Font color
    padding: const EdgeInsets.all(20),
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          TextButton(
            onPressed:
                calc.isError ? null : () => calc.inputOperator("%"),
            style: buttonStyle,
            child: const Text("%"),
          ),
          TextButton(
            onPressed: () => calc.clearCurrentElement(),
            style: buttonStyle,
            child: const Text("CE"),
          ),
          TextButton(
              onPressed: () => calc.clear(),
              style: buttonStyle,
              child: const Text("C")),
          TextButton(
              onPressed: () => calc.deleteDigit(),
              style: buttonStyle,
              child: const Icon(Icons.backspace_outlined)),
          TextButton(
              onPressed: calc.isError
                  ? null
                  : () => calc.inputSpecialOperator("1 /"),
              style: buttonStyle,
              child: const Text(
                "1/x",
              )),
          TextButton(
              onPressed: calc.isError
                  ? null
                  : () => calc.inputSpecialOperator("sqr"),
              style: buttonStyle,
              child: const Text("x²")),
          TextButton(
              onPressed: calc.isError
                  ? null
                  : () => calc.inputSpecialOperator("√"),
              style: buttonStyle,
              child: const Text(
                "√",
              )),
          TextButton(
              onPressed:
                  calc.isError ? null : () => calc.inputOperator("÷"),
              style: buttonStyle,
              child: const Text(
                "÷",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('7'),
              style: buttonStyle,
              child: const Text(
                "7",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('8'),
              style: buttonStyle,
              child: const Text(
                "8",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('9'),
              style: buttonStyle,
              child: const Text(
                "9",
              )),
          TextButton(
              onPressed:
                  calc.isError ? null : () => calc.inputOperator("×"),
              style: buttonStyle,
              child: const Text(
                "×",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('4'),
              style: buttonStyle,
              child: const Text(
                "4",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('5'),
              style: buttonStyle,
              child: const Text(
                "5",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('6'),
              style: buttonStyle,
              child: const Text(
                "6",
              )),
          TextButton(
              onPressed:
                  calc.isError ? null : () => calc.inputOperator("-"),
              style: buttonStyle,
              child: const Text(
                "-",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('1'),
              style: buttonStyle,
              child: const Text(
                "1",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('2'),
              style: buttonStyle,
              child: const Text(
                "2",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('3'),
              style: buttonStyle,
              child: const Text(
                "3",
              )),
          TextButton(
              onPressed:
                  calc.isError ? null : () => calc.inputOperator("+"),
              style: buttonStyle,
              child: const Text(
                "+",
              )),
          TextButton(
              onPressed: calc.isError ? null : () =>calc.toggleSign(),
              style: buttonStyle,
              child: const Text(
                "+/-",
              )),
          TextButton(
              onPressed: () => calc.inputDigit('0'),
              style: buttonStyle,
              child: const Text(
                "0",
              )),
          TextButton(
              onPressed:
                  calc.isError ? null : () => calc.inputDecimalPoint(),
              style: buttonStyle,
              child: const Text(
                ".",
              )),
          TextButton(
              onPressed: () => calc.calculate(),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor:
                    const Color.fromARGB(255, 62, 87, 134),
                textStyle:
                    const TextStyle(fontSize: 24), // Text size
                foregroundColor: const Color.fromARGB(
                    255, 211, 218, 238), // Font color
                padding: const EdgeInsets.all(20),
              ),
              child: const Text(
                "=",
              )),
        ],
      ),
    );
  }
}
