import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/controller/services.dart';
import 'package:flutter_project_todo_app/models/task_model.dart';
import 'package:flutter_project_todo_app/view/screens/my_home_page.dart';
import 'package:flutter_project_todo_app/view/themes/themes.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(TaskModelAdapter().typeId)) {
    Hive.registerAdapter(TaskModelAdapter());
  }
  
  await Hive.openBox<TaskModel>('mybox');
  await Hive.openBox('theme_settings');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themebox.listenable(),
      builder:(context, box, child) {
        final isDark=box.get('isDark',defaultValue: false);
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: isDark ? CustomAppTheme.appTheme[AppTheme.darkTheme] : CustomAppTheme.appTheme[AppTheme.lightTheme],
        home: MyHomePage(),
      );
      },
    );
  }
}