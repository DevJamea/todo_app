import 'package:flutter/foundation.dart';

import '../models/task_model.dart';

class TodoProvider extends ChangeNotifier {
  String appName = "TODO";
  List<TaskModel> tasks = [];

  addNewTask(String taskTitle) {
    TaskModel taskModel = TaskModel(taskTitle, false);
    tasks.add(taskModel);
    notifyListeners();
  }

  deleteTask(TaskModel taskModel) {
    tasks.remove(taskModel);
    notifyListeners();
  }

  updateTask(TaskModel taskModel) {
    taskModel.isComplete = !taskModel.isComplete;
    notifyListeners();
  }
}
