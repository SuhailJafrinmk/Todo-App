import 'package:fluro/fluro.dart';
import 'package:flutter_project_todo_app/view/screens/about_page.dart';
import 'package:flutter_project_todo_app/view/screens/completed.dart';
import 'package:flutter_project_todo_app/view/screens/pending.dart';
import 'package:flutter_project_todo_app/view/screens/settings_page.dart';

//class for routing using fluro package
class CustomRouter {
  static final router = FluroRouter();

  static void setupRouter() {
    router.define('settingsPage',
        handler: Handler(
          handlerFunc: (context, params) => SettingsPage(),
        ),
        transitionType: TransitionType.inFromRight);
    router.define('completedpage',
        handler:
            Handler(handlerFunc: (context, params) => const CompletedTasks()),
        transitionType: TransitionType.inFromTop);
    router.define('pendingpage',
        handler:
            Handler(handlerFunc: (context, params) => const PendingTasks()),
        transitionType: TransitionType.inFromTop);
    router.define('aboutpage',
        handler: Handler(handlerFunc: (context, params) => AboutPage()),
        transitionType: TransitionType.inFromTop);
  }
}
