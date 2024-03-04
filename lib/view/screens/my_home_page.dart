import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/controller/services.dart';
import 'package:flutter_project_todo_app/view/screens/completed.dart';
import 'package:flutter_project_todo_app/view/screens/homepage.dart';
import 'package:flutter_project_todo_app/view/screens/pending.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> pages = [
    HomePage(),
    const CompletedTasks(),
    const PendingTasks(),
  ];
  int itemindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO APP'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  final isDark = themebox.get('isDark', defaultValue: false);
                  (isDark == false)
                      ? themebox.put('isDark', true)
                      : themebox.put('isDark', false);
                });
              },
              icon: const Icon(Icons.light)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          useLegacyColorScheme: false,
          onTap: (index) {
            setState(() {
              itemindex = index;
            });
          },
          currentIndex: itemindex,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Completed', icon: Icon(Icons.done_outline)),
            BottomNavigationBarItem(label: 'Pending', icon: Icon(Icons.pending))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showmodal(context);
        },
        child: const Icon(Icons.note_add),
      ),
      body: pages.elementAt(itemindex),
    );
  }
}
