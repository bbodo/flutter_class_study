import 'package:flutter/material.dart';
import 'package:flutter_container_v1/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text("Item 1"),
                padding: EdgeInsets.all(10),
              ),
              Container(
                child: Text("Item 2"),
                padding: EdgeInsets.all(10),
              ),
              Container(
                child: Text("Item 3"),
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
