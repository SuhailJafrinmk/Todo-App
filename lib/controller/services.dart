
import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/main.dart';
import 'package:flutter_project_todo_app/models/task_model.dart';
import 'package:flutter_project_todo_app/view/themes/themes.dart';
import 'package:flutter_project_todo_app/view/widgets/custom_button.dart';
import 'package:flutter_project_todo_app/view/widgets/custom_textfield.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box<TaskModel> taskBox;
Box themebox=Hive.box('theme_settings');
String themeKey='themeKey';

ValueNotifier <List<TaskModel>> taskListnotifier=ValueNotifier([]);


//function to add data to database
void addDataToDb(taskItems)async{
  taskBox=Hive.box('mybox');
  taskBox.add(taskItems);
  taskListnotifier.value=taskBox.values.toList();
}

Future <void> getAllTasks()async{
  taskBox=Hive.box<TaskModel>("mybox");
  taskListnotifier.value.clear();
  taskListnotifier.value.addAll(taskBox.values);
  taskListnotifier.notifyListeners();
}


///should be deleted----------------------------------------------------------------------
void deleteFromDb(int index){
taskBox=Hive.box('mybox');
taskBox.deleteAt(index);
taskListnotifier.notifyListeners();
}

  
//function to show bottom modal sheet----------------------------------
Future<dynamic> showmodal(context){

  TextEditingController taskTitleController=TextEditingController();
  TextEditingController taskDescriptionController=TextEditingController();
  
  
  return showModalBottomSheet(context: context, builder: (context){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 20,),
            CustomTextField(controller: taskTitleController, hintText: 'Title of Task', icon: const Icon(Icons.title)),
            const SizedBox(height: 20,),
            CustomTextField(controller: taskDescriptionController, hintText: 'Task Description', icon: const Icon(Icons.description)),
            const SizedBox(height: 50,),
            CustomButton(onPressed: (){  
              String taskTitle=taskTitleController.text;
              String taskDescription=taskDescriptionController.text;
              TaskModel taskItems=TaskModel(title: taskTitle,description: taskDescription,dateTime: DateTime.now()); 
              addDataToDb(taskItems);        
              // addJustToList(taskItems); 
              print(taskItems);    //should be deleted-------------------------------------
                // addTask(listItem);
                Navigator.pop(context);    
            }, buttonText: 'Add'),
            ],
          ),
        ),
      ),
    );
  });
}

//function to inialise hive db

//function to insert data in to hive db from bottommodalsheet
// Future <void> addTask(TaskModel listItem)async{
//   taskBox=Hive.box('mybox');
//   int taskkey=await taskBox.add(listItem);
//   taskListnotifier.value.add(listItem);
//   taskListnotifier.notifyListeners();
//   print(taskBox.getAt(taskkey));
// }
//function to get data from hive db
// Future <void> getAllTasks()async{
// taskBox=Hive.box('mybox');
// taskListnotifier.value.addAll(taskBox.values);
// taskListnotifier.notifyListeners();
// }

//function to delete data from hive db

//function to update data from hive db

// void addJustToList(TaskModel taskItems){
// taskListnotifier.value.add(taskItems);
// taskListnotifier.notifyListeners();
// print('printing${taskItems}  taskname${taskItems.title} taskdescription${taskItems.description}');
// }


//function to set theme


//function to add ticked items to another list
// void AddTickedToList(){
  
// }

//function to add theme to database
// addThemeToDb()async{
//   await themebox.put(themeKey, darkTheme);
// }

//function to get theme from database
// ThemesModel getThemeFromDb(){
//  ThemesModel theme=themebox.get(themeKey)!;
//  return theme;
// }

//function to update theme
// updateTheme()async{
//   await themebox.put(themeKey,MyApp.currentTheme==);
// }
