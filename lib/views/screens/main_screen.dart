import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_model.dart';
import 'package:todo_app/providers/todo_provider.dart';
import 'package:todo_app/views/screens/add_new_task.dart';
import 'package:todo_app/views/screens/all_tasks.dart';
import 'package:todo_app/views/screens/complete_tasks.dart';
import 'package:todo_app/views/screens/incomplete_tasks.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 35,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return AddTask();
            }));
          },
        ),
        appBar: AppBar(
          title: Text(Provider.of<TodoProvider>(context).appName),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.list),
            ),
            Tab(
              icon: Icon(Icons.done),
            ),
            Tab(
              icon: Icon(Icons.cancel),
            )
          ]),
        ),
        body: TabBarView(
            children: [AllTasks(), CompleteTasks(), InCompleteTasks()]),
      ),
    );
  }
}
