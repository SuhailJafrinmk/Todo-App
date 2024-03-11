import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/controller/router.dart';
import 'package:flutter_project_todo_app/controller/services.dart';
import 'package:flutter_project_todo_app/models/task_model.dart';
import 'package:flutter_project_todo_app/view/screens/my_home_page.dart';
import 'package:flutter_project_todo_app/view/themes/themes.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(TaskModelAdapter().typeId)) {  //registering the type adapter for the type taskmodel
    Hive.registerAdapter(TaskModelAdapter()); 
  }
  await Hive.openBox<TaskModel>('mybox'); //box for storing taskmodel objects
  await Hive.openBox('theme_settings'); //box for storing theme settings
  CustomRouter.setupRouter();  //setup for fluro router
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themebox.listenable(),
      builder: (context, box, child) {
        final isDark = box.get('isDark', defaultValue: false);
        return MaterialApp(
          onGenerateRoute: CustomRouter.router.generator,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: isDark
              ? CustomAppTheme.appTheme[AppTheme.darkTheme]
              : CustomAppTheme.appTheme[AppTheme.lightTheme],
          home: const MyHomePage(),
        );
      },
    );
  }
}
