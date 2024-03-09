import 'package:flutter/material.dart';

enum AppTheme { darkTheme, lightTheme }

//class for theme setting
class CustomAppTheme {
  static final appTheme = {
    AppTheme.darkTheme: ThemeData(
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.grey,
      ),
      cardTheme: const CardTheme(
        color: Colors.grey,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.black,
        textStyle: const TextStyle(color: Colors.white),
        fixedSize: const Size(300, 60),
      )),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.grey,
      ),
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headline4: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          selectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.white,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.white,
          )),
      iconTheme: const IconThemeData(color: Colors.white),
    ),

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    AppTheme.lightTheme: ThemeData(
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.yellow.shade200,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.yellow.shade200,
      ),
      cardTheme: CardTheme(
        elevation: 30,
        color: Colors.yellow.shade500,
      ),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(fixedSize: const Size(20, 20))),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 255, 245, 157),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.yellow.shade500,
        fixedSize: const Size(300, 60),
      )),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Color.fromARGB(255, 255, 245, 157),
      ),
      scaffoldBackgroundColor: Colors.yellow.shade200,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.yellow.shade500,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
        elevation: 20,
      ),
      textTheme: const TextTheme(
        headline4: TextStyle(color: Colors.black),
        headline5: TextStyle(color: Colors.black),
        headline6: TextStyle(color: Colors.black),
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        selectedIconTheme: IconThemeData(
          color: const Color.fromARGB(255, 22, 60, 91),
        ),
        elevation: 20,
        backgroundColor: Color.fromARGB(255, 230, 217, 102),
      ),
    ),
  };
}
