import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/controller/services.dart';
import 'package:flutter_project_todo_app/models/task_model.dart';
import 'package:flutter_project_todo_app/view/widgets/custom_tile.dart';
import 'package:hive/hive.dart';

class PendingTasks extends StatelessWidget {
  const PendingTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: taskListnotifier,
        builder: (context, List<TaskModel> listOfTask, Widget? child) {
          return ListView.builder(
              itemCount: listOfTask.length,
              itemBuilder: (BuildContext context, index) {
                final data = listOfTask[index];

                return data.isCompleted == false
                    ? CustomTile(
                        removeicon: false,
                        index: index,
                        data: data,
                        fordeletion: () {
                          deleteFromDb(index);
                          taskBox = Hive.box('mybox');
                          taskListnotifier.value = taskBox.values.toList();
                        },
                      )
                    : const SizedBox();
              });
        });
  }
}
