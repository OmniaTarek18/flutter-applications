import 'package:calculator/calculator.dart';
import 'package:calculator/homewidgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    final calc = Provider.of<Calculator>(context); // Access the calculator
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
              child: GoToHistory(calc: calc),
            )
          ],
        ),
        body: Container(
            color: const Color.fromARGB(255, 0, 0, 0),
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Display(calc: calc),
                Buttons(calc: calc),
              ],
            )));
  }
}
