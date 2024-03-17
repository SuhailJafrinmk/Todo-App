import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/models/task_model.dart';
import 'package:flutter_project_todo_app/view/widgets/custom_button.dart';
import 'package:flutter_project_todo_app/view/widgets/custom_textfield.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

late Box<TaskModel> taskBox; //box for storing taskmodel objects
Box themebox = Hive.box('theme_settings'); //box for storing theme
ValueNotifier<List<TaskModel>> taskListnotifier =ValueNotifier([]); //notifier for adding data to database
TextEditingController taskTitleController = TextEditingController();
TextEditingController taskDescriptionController = TextEditingController();

//function to add data to database
void addDataToDb(taskItems) async {
  taskBox = Hive.box('mybox');
  await taskBox.add(taskItems);
  // print("$taskItems shadil");
  taskListnotifier.value = taskBox.values.toList();
}

//function to get the updated task list during every rebuild
Future<void> getAllTasks() async {
  taskBox = Hive.box<TaskModel>("mybox");
  taskListnotifier.value.clear();
  taskListnotifier.value.addAll(taskBox.values);
  taskListnotifier.notifyListeners();
}

///should be deleted----------------------------------------------------------------------
void deleteFromDb(int index) {
  taskBox = Hive.box('mybox');
  taskBox.deleteAt(index);
  taskListnotifier.notifyListeners();
}

//The logic for updating checkbox and updating the boolean value isCompleted
Future<void> upatedcheckbox(TaskModel value, int index) async {
  taskBox = Hive.box('mybox');
  value.isCompleted = !value.isCompleted;
  await taskBox.putAt(index, value);
}

//function to update the tile
Future<void> updatedtile(TaskModel data, int index) async {
  taskBox = Hive.box('mybox');
  await taskBox.putAt(index, data);
  getAllTasks();
}


//function to show bottom modal sheet----------------------------------
Future<dynamic> showmodal(context) {
  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        controller: taskTitleController,
                        hintText: 'Title of Task',
                        icon: const Icon(Icons.title)),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        controller: taskDescriptionController,
                        hintText: 'Task Description',
                        icon: const Icon(Icons.description)),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                        onPressed: () {
                          if (taskTitleController.text.isNotEmpty ||
                              taskDescriptionController.text.isNotEmpty) {
                            String taskTitle = taskTitleController.text;
                            String taskDescription =
                                taskDescriptionController.text;
                            TaskModel taskItems = TaskModel(
                                title: taskTitle,
                                description: taskDescription,
                                dateTime: DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
                                );
                            addDataToDb(taskItems);
                            Navigator.pop(context);
                          }
                        },
                        buttonText: 'Add'),
                  ],
                )),
          ),
        );
      });
}




//bottom sheet for udating the values in the tile---------------------------
Future<dynamic> showModalUpdateSheet(
    context, TaskModel datashared, int index1) {
  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();
  taskDescriptionController.text = datashared.description;
  taskTitleController.text = datashared.title;
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        controller: taskTitleController,
                        hintText: 'Title of Task',
                        icon: const Icon(Icons.title)),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        controller: taskDescriptionController,
                        hintText: 'Task Description',
                        icon: const Icon(Icons.description)),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                        onPressed: () {
                          if (taskTitleController.text.isNotEmpty ||
                              taskDescriptionController.text.isNotEmpty) {
                            TaskModel taskItems = TaskModel(
                                title: taskTitleController.text,
                                description: taskDescriptionController.text,
                                dateTime: DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
                                );
                            updatedtile(taskItems, index1);
                            Navigator.pop(context);
                          }
                        },
                        buttonText: 'update'),
                  ],
                )),
          ),
        );
      });
}
