import 'package:flutter/material.dart';

// class Themes {
//   //------------theme for dark mode-------------------------------------
//   static ThemeData darkTheme = ThemeData(
//     elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//       primary: Colors.black,
//       textStyle: TextStyle(color: Colors.white),
//       fixedSize: const Size(300, 60),
//     )),
//     bottomSheetTheme: const BottomSheetThemeData(
//       backgroundColor: Colors.grey,
//     ),
//     scaffoldBackgroundColor: Colors.black,
//     // primaryColor: const Color.fromARGB(115, 0, 0, 0),
//     appBarTheme: const AppBarTheme(
//       titleTextStyle: TextStyle(
//         color: Colors.white,
//         fontSize: 25,
//         fontWeight: FontWeight.w500
//       ),
//       elevation: 0,
//       color: Colors.black,
//     ),
//       textTheme: const TextTheme(
//           headline1: TextStyle(color: Colors.white), // Example text style
//           headline2: TextStyle(color: Colors.white),
//           bodyText1: TextStyle(color: Colors.white),
//           bodyText2: TextStyle(color: Colors.white),
//           // Add more text styles as needed
//         ),
    
//     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//       backgroundColor: Colors.black,
//       unselectedIconTheme: IconThemeData(
//         color: Colors.white,
//       ),
//       selectedIconTheme: IconThemeData(
//         color: Colors.white,
//       ),
//       selectedLabelStyle: TextStyle(
//         color: Colors.white,
//       ),
//       unselectedLabelStyle: TextStyle(
//         color: Colors.white,
//       )
//     ),
//     iconTheme: const IconThemeData(
//       color: Colors.white,
//     ),
//   );

//   //theme for light mode--------------------------------------------------
//   static ThemeData lightTheme = ThemeData(
//     cardTheme: CardTheme(
//       color: Colors.yellow.shade500,
//     ),
    
//     iconButtonTheme: IconButtonThemeData(
//       // style: IconButton.styleFrom(
//       //   backgroundColor: Colors.black,
//       // )
//       style: IconButton.styleFrom(
//         backgroundColor: Colors.black,
//         fixedSize: Size(20, 20)
//       )
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: Color.fromARGB(255, 255, 245, 157),
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//       primary: Colors.yellow.shade500,
//       fixedSize: const Size(300, 60),
//     )),
//     bottomSheetTheme: const BottomSheetThemeData(
//       backgroundColor: Color.fromARGB(255, 255, 245, 157),
//     ),
//     scaffoldBackgroundColor: Colors.yellow.shade200,
//     appBarTheme: AppBarTheme(
//       titleTextStyle: const TextStyle(
//         color: Colors.black,
//         fontSize: 25,
//       ),
//       elevation: 20,
//       color: Colors.yellow.shade500,
//     ),
//     textTheme: const TextTheme(
//         displayLarge: TextStyle(
//           color: Colors.black,
//         ),
//         displayMedium: TextStyle(color: Colors.black),
//         displaySmall: TextStyle(color: Colors.black)),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       elevation: 20,
//       backgroundColor: Colors.yellow.shade500,
//     ),
//   );
// }

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
enum AppTheme{
  darkTheme,
  lightTheme
}
class CustomAppTheme{
static final appTheme={
  AppTheme.darkTheme:ThemeData(
    cardTheme: CardTheme(
      color: Colors.grey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: Colors.black,
      textStyle: TextStyle(color: Colors.white),
      fixedSize: const Size(300, 60),
    )),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.grey,
    ),
    scaffoldBackgroundColor: Colors.black,
    // primaryColor: const Color.fromARGB(115, 0, 0, 0),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w500
      ),
      elevation: 0,
      color: Colors.black,
    ),
      textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white), // Example text style
          headline2: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          // Add more text styles as needed
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
      )
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  AppTheme.lightTheme:ThemeData(
    cardTheme: CardTheme(
      color: Colors.yellow.shade500,
    ),
    
    iconButtonTheme: IconButtonThemeData(
      // style: IconButton.styleFrom(
      //   backgroundColor: Colors.black,
      // )
      style: IconButton.styleFrom(
        backgroundColor: Colors.black,
        fixedSize: Size(20, 20)
      )
    ),
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