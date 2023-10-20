import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Row,Column, Expanded Example")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Text("1"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.cyan,
                      child: Text("2"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: Text("3"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.amberAccent,
                      child: Text("4"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: Text("5"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      child: Text("6"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                      child: Text("7"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: Text("8"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: Text("9"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

