import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool enabled = false;

  String sateText = "disable";

  void changeCheck() {
    setState(() {
      if (enabled) {
        sateText = "disable";
        enabled = false;
      } else {
        sateText = "enable";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: enabled
                    ? Icon(Icons.check_box, size: 20)
                    : Icon(Icons.check_box_outline_blank, size: 20),
                onPressed: changeCheck,
                color: Colors.red,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  '$sateText',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}