import 'package:hive_flutter/hive_flutter.dart';
part 'task_model.g.dart';
@HiveType(typeId: 1)
class TaskModel{
  
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  bool ? isCompleted;
  @HiveField(3)
  DateTime  dateTime;


TaskModel({required this.title,required this.description,required this.dateTime});


}