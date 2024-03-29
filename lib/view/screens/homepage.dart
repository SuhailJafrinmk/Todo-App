import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/controller/services.dart';
import 'package:flutter_project_todo_app/models/task_model.dart';
import 'package:flutter_project_todo_app/view/widgets/custom_tile.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getAllTasks();
    return ValueListenableBuilder(
        valueListenable: taskListnotifier,
        builder: (context, List<TaskModel> listOfTask, Widget? child) {
          return ListView.builder(
            padding: EdgeInsets.only(bottom: 60),
              itemCount: listOfTask.length,
              itemBuilder: (BuildContext context, index) {
                final reversedIndex=listOfTask.length-index-1;
                final data = listOfTask[reversedIndex];
                return InkWell(
                  onTap: () {
                  showModalUpdateSheet(context,data,index);
                  },
                  child: CustomTile(removeicon: true,
                  index: index,
                    data: data,
                    fordeletion: () {
                      deleteFromDb(index);
                      taskBox = Hive.box('mybox');
                      taskListnotifier.value = taskBox.values.toList();
                    }, 
                  ),
                );
              });
        });
  }
}
