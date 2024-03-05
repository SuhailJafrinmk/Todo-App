import 'package:flutter/material.dart';

enum AppTheme { darkTheme, lightTheme }

//class for theme setting
class CustomAppTheme {
  static final appTheme = {
    AppTheme.darkTheme: ThemeData(
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
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        elevation: 0,
        color: Colors.black,
      ),
      textTheme: const TextTheme(
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
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),


    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    AppTheme.lightTheme: ThemeData(
      cardTheme: CardTheme(
        color: Colors.yellow.shade500,
      ),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
              backgroundColor: Colors.black, fixedSize: const Size(20, 20))),
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
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
        elevation: 20,
        color: Colors.yellow.shade500,
      ),
      textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.black,
          ),
          displayMedium: TextStyle(color: Colors.black),
          displaySmall: TextStyle(color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 20,
        backgroundColor: Colors.yellow.shade500,
      ),
    ),
  };
}
