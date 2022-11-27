import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_model.dart';

import '../../providers/todo_provider.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;
  TaskWidget(this.taskModel);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(
      builder: (context , provider , Widget) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: taskModel.isComplete
                  ? Colors.blue.shade400
                  : Colors.red.shade400),
          child: Row(
            children: [
              IconButton(onPressed: (){
                provider.deleteTask(taskModel);
              }, icon: Icon(Icons.delete)),
              Expanded(
                child: CheckboxListTile(
                    title: Text(
                      taskModel.title,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    value: taskModel.isComplete,
                    onChanged: (v) {
                      provider.updateTask(taskModel);
                    }),
              ),
            ],
          ),
        );
      }
    );
  }
}
