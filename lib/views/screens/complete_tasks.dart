import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/views/widgets/task_widget.dart';

import '../../providers/todo_provider.dart';

class CompleteTasks extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(
      builder: (context , provider , Widget) {
        return ListView.builder(
            itemCount:provider.tasks.where((element) => element.isComplete).length,
            itemBuilder: (context, index) {
              return TaskWidget(
                  provider.tasks.where((element) => element.isComplete).toList()[index] );
            });
      }
    );
  }
}
