import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/todo_provider.dart';
import 'package:todo_app/views/screens/main_screen.dart';

void main() {
  runApp(MainClass());
}

class MainClass extends StatelessWidget {
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoProvider>(
      create:(context) => TodoProvider(),
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}

