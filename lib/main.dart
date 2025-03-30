import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:main/pages/todo_screen.dart';

void main() async {
  // Ensure that plugin services are initialized
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.openBox('todos');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      home: const TodoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
