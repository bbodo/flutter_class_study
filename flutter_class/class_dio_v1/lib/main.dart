import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dio Example',
      theme: ThemeData(
          primarySwatch: Colors.orange
      ),
      home: SafeArea(child: MyHomePage()),
    );
  }
}

// 기본 코드 작성 - 1
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Dio _dio = Dio();
  List<dynamic> _todos = [];
  // 통신하기 위해 서버 필요
  // https://jsonplaceholder.typicode.com/todos

  @override
  void initState() {
    super.initState();
    _fetchTodos();
  }

  // 비동기 통신 -> Future
  Future<void> _fetchTodos() async {
    Response response = await _dio.get('https://jsonplaceholder.typicode.com/todos');
    print(response.statusCode);
    print('response.data : ${response.data}');
    print('response.data type check : ${response.runtimeType}');
    _todos = response.data;
  }

  // POST 함수 만들기
  Future<void> _fetchTodoPost() async {}

  // PUT 함수 만들기
  Future<void> _fetchTodoPut() async {}

  // DELETE 함수 만들기
  Future<void> _fetchTodoDelete() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index){
        return ListTile(
          leading: Text('${index + 1}'),
          title: Text('title : ${_todos[index]['title']}'),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('post')),
              ElevatedButton(onPressed: (){}, child: Text('put')),
              ElevatedButton(onPressed: (){}, child: Text('delete')),
            ],
          ),
          trailing: IconButton(onPressed: (){
            print('상세보기 이동');
          }, icon: Icon(Icons.add)),
        );
      }, itemCount: _todos.length),
    );
  }
}
