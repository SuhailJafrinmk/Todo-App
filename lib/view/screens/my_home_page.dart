import 'package:flutter/material.dart';
import 'package:flutter_project_todo_app/controller/router.dart';
import 'package:flutter_project_todo_app/controller/services.dart';
import 'package:flutter_project_todo_app/view/screens/completed.dart';
import 'package:flutter_project_todo_app/view/screens/homepage.dart';
import 'package:flutter_project_todo_app/view/screens/pending.dart';
import 'package:google_fonts/google_fonts.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 50),
          children: [
            const DrawerHeader(child:Icon(Icons.account_circle,size: 100,),
             ),
             const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('User details'),
             ),
             ListTile(
              leading: const Icon(Icons.add_circle_rounded),
              title: const Text('Add new task'),
              onTap: () {
                showmodal(context);
              },
             ),
             ListTile(
              leading: const Icon(Icons.done),
              title: const Text('Completed Tasks'),
              onTap: (){
                CustomRouter.router.navigateTo(context, 'completedpage');
              },
             ),
             ListTile(
              leading: const Icon(Icons.pending),
              title: const Text('Pending Tasks'),
              onTap: (){
                CustomRouter.router.navigateTo(context, 'pendingpage');
              },
             ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: (){
                CustomRouter.router.navigateTo(context,'settingsPage');
              }
            ),
             ListTile(
              leading: const Icon(Icons.details_rounded),
              title: const Text('About'),
              onTap: (){
                CustomRouter.router.navigateTo(context, 'aboutpage');

              }
            ),
            const ListTile(

            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('TaskTrackr',style: GoogleFonts.roboto(
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),),
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
              icon: const Icon(Icons.light,),style:IconButton.styleFrom(
                backgroundColor: Colors.transparent
              ) ,),
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
