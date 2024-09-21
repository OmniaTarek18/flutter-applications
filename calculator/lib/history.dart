import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key, required this.arr});

  final List<String> arr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "History",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: ListView.builder(
          itemCount: arr.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.only(bottom: 1),
              color: const Color.fromARGB(255, 62, 87, 134),
              child: Text(
                arr[index],
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
