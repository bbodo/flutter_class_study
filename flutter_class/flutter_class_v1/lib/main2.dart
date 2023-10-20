// Fluuter 의 Material 라이브러리를 가져 옵니다.
import 'package:flutter/material.dart';

// 애플리케이션에 진입점
void main() {
  // MyStateLessApp 위젯을 애플리케이션 루트로 설정 하고 실행 합니다.
  runApp(MyStatefulApp());
}

// 단축키 stf
class MyStatefulApp extends StatefulWidget {
  // 생성자
  const MyStatefulApp({super.key});

  // createState() 메서드는 State 객체를 생성 합니다.
  // 즉, State 객체가 있다 --> StatefulWidget 이다.
  @override
  State<MyStatefulApp> createState() => _MyStatefulAppState();
} // end of MyStatefulApp

class _MyStatefulAppState extends State<MyStatefulApp> {
  int _counter = 0;

  // 메서드
  void _incrementCounter() {
    // StatefulWidget 위젯과 함께 사용되며 위젯의 상태를 변경하고
    // 화면을 다시 그리게 알려 주는 역활 - build() 실행
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build 메서드 호출 확인");
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: Text("Count : $_counter"),
          ),
        ),
      ),
    );
  }
} // end of _MyStatefulAppState

