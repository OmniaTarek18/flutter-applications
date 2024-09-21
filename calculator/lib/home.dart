import 'package:calculator/Calculator.dart';
import 'package:calculator/history.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Calculator calc = Calculator();

  void inputDigit(String digit) {
    setState(() {
      calc.inputDigit(digit);
    });
  }

  void inputOperator(String op) {
    setState(() {
      calc.inputOperator(op);
    });
  }

  void inputSpecialOperator(String op) {
    setState(() {
      calc.inputSpecialOperator(op);
    });
  }

  void calculate() {
    setState(() {
      calc.calculate();
    });
  }

  void clear() {
    setState(() {
      calc.clear();
    });
  }

  void clearCurrentElement() {
    setState(() {
      calc.clearCurrentElement();
    });
  }

  void deletDigit() {
    setState(() {
      calc.deleteDigit();
    });
  }

  void inputDecimalPoint() {
    setState(() {
      calc.inputDecimalPoint();
    });
  }

  void toggleSign() {
    setState(() {
      calc.toggleSign();
    });
  }

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
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calculator",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          leading: const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Icon(
              Icons.calculate_rounded,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
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
                  )),
            )
          ],
        ),
        body: Container(
            color: const Color.fromARGB(255, 0, 0, 0),
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
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
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      TextButton(
                        onPressed: calc.isError ? null : () => inputOperator("%"),
                        style: buttonStyle,
                        child: const Text("%"),
                      ),
                      TextButton(
                        onPressed: () => clearCurrentElement(),
                        style: buttonStyle,
                        child: const Text("CE"),
                      ),
                      TextButton(
                          onPressed: () => clear(),
                          style: buttonStyle,
                          child: const Text("C")),
                      TextButton(
                          onPressed: () => deletDigit(),
                          style: buttonStyle,
                          child: const Icon(Icons.backspace_outlined)),
                      TextButton(
                          onPressed: calc.isError
                              ? null
                              : () => inputSpecialOperator("1 /"),
                          style: buttonStyle,
                          child: const Text(
                            "1/x",
                          )),
                      TextButton(
                          onPressed: calc.isError
                              ? null
                              : () => inputSpecialOperator("sqr"),
                          style: buttonStyle,
                          child: const Text("x²")),
                      TextButton(
                          onPressed: calc.isError
                              ? null
                              : () => inputSpecialOperator("√"),
                          style: buttonStyle,
                          child: const Text(
                            "√",
                          )),
                      TextButton(
                          onPressed: calc.isError ? null : () => inputOperator("÷"),
                          style: buttonStyle,
                          child: const Text(
                            "÷",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('7'),
                          style: buttonStyle,
                          child: const Text(
                            "7",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('8'),
                          style: buttonStyle,
                          child: const Text(
                            "8",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('9'),
                          style: buttonStyle,
                          child: const Text(
                            "9",
                          )),
                      TextButton(
                          onPressed: calc.isError ? null : () => inputOperator("×"),
                          style: buttonStyle,
                          child: const Text(
                            "×",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('4'),
                          style: buttonStyle,
                          child: const Text(
                            "4",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('5'),
                          style: buttonStyle,
                          child: const Text(
                            "5",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('6'),
                          style: buttonStyle,
                          child: const Text(
                            "6",
                          )),
                      TextButton(
                          onPressed: calc.isError ? null : () => inputOperator("-"),
                          style: buttonStyle,
                          child: const Text(
                            "-",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('1'),
                          style: buttonStyle,
                          child: const Text(
                            "1",
                          )),
                      TextButton(
                          onPressed:  () => inputDigit('2'),
                          style: buttonStyle,
                          child: const Text(
                            "2",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('3'),
                          style: buttonStyle,
                          child: const Text(
                            "3",
                          )),
                      TextButton(
                          onPressed: calc.isError ? null : () => inputOperator("+"),
                          style: buttonStyle,
                          child: const Text(
                            "+",
                          )),
                      TextButton(
                          onPressed: calc.isError ? null : () => toggleSign(),
                          style: buttonStyle,
                          child: const Text(
                            "+/-",
                          )),
                      TextButton(
                          onPressed: () => inputDigit('0'),
                          style: buttonStyle,
                          child: const Text(
                            "0",
                          )),
                      TextButton(
                          onPressed: calc.isError ? null : () => inputDecimalPoint(),
                          style: buttonStyle,
                          child: const Text(
                            ".",
                          )),
                      TextButton(
                          onPressed: () => calculate(),
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: const Color.fromARGB(255, 62, 87, 134),
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
                ),
              ],
            )));
  }
}
