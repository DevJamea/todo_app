import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/todo_provider.dart';

class AddTask extends StatelessWidget {
  String content = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Consumer<TodoProvider>(
      builder: (context , provider , Widget) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            child: Column(
              children: [
                TextField(
                  onChanged: ((value) => content = value),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Add Task"),
                ),
                ElevatedButton(
                    onPressed: () {
                     provider
                          .addNewTask(content);
                      Navigator.of(context).pop();
                    },
                    child: Text("Add New Task"))
              ],
            ),
          );
        }
      ),
    );
  }
}
