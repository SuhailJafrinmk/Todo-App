// import 'package:flutter/material.dart';

// class BottomSheetForm extends StatefulWidget{
//   State<BottomSheetForm> createState()=> _BottomSheetFormState();
// }

// class _BottomSheetFormState extends State<BottomSheetForm>{
//   Widget build(BuildContext context){
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20)
//         ),
//         child: Form(
//           child: Column(
//             children: [
//               const SizedBox(height: 20,),
//             CustomTextField(controller: taskTitleController, hintText: 'Title of Task', icon: const Icon(Icons.title)),
//             const SizedBox(height: 20,),
//             CustomTextField(controller: taskDescriptionController, hintText: 'Task Description', icon: const Icon(Icons.description)),
//             const SizedBox(height: 50,),
//             CustomButton(onPressed: (){  
//               String taskTitle=taskTitleController.text;
//               String taskDescription=taskDescriptionController.text;
//               TaskModel taskItems=TaskModel(title: taskTitle,description: taskDescription,dateTime: DateTime.now()); 
//               addDataToDb(taskItems);        
//               // addJustToList(taskItems); 
//               print(taskItems);    //should be deleted-------------------------------------
//                 // addTask(listItem);
//                 Navigator.pop(context);    
//             }, buttonText: 'Add'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }