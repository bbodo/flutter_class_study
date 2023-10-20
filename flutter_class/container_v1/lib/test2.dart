import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // Stack 여러 자식 위젯을 겹치게 배치할 수 있게 하는 컨테이너 위젯이다.
          // 첫번째 자식에 여유 공간이 있어야 정렬이 가능하다.
          // Stack - Alignment 위젯으로 정렬을 할 수 있다.
          child: Center(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blueAccent,
                  ),
                ),
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.redAccent,
                  ),
                ),
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                ),
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}