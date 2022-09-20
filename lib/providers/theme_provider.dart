import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme with ChangeNotifier {
  ThemeMode _mode;
  bool sw = false;
  ThemeMode get mode => _mode;
  AppTheme({ThemeMode mode = ThemeMode.light}) : _mode = mode;

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  late ThemeData myTheme = ThemeData(
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color.fromARGB(255, 202, 202, 202),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.indigoAccent.shade700,
        secondary: Colors.tealAccent.shade700,
        brightness: Brightness.light),
    backgroundColor: Colors.indigoAccent.shade700,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.indigoAccent.shade700,
        foregroundColor: Colors.white),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.indigoAccent.shade700,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 23, 36, 109)),
    canvasColor: const Color.fromARGB(255, 202, 202, 202),
    textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: const TextStyle(color: Color.fromARGB(255, 79, 79, 79)),
          bodyMedium: const TextStyle(color: Color.fromARGB(255, 79, 79, 79)),
          bodySmall: const TextStyle(color: Color.fromARGB(255, 79, 79, 79)),
          titleLarge: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          titleMedium: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          titleSmall: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          labelSmall: const TextStyle(color: Color.fromARGB(255, 33, 33, 33)),
        ),
    cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        textTheme: CupertinoTextThemeData(primaryColor: CupertinoColors.white)),
  );

  void toogleTheme(BuildContext ctx) {
    _mode = _mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    if (sw == true) {
      sw = false; // LIDHT MODE
      myTheme = ThemeData(
        drawerTheme: const DrawerThemeData(
            backgroundColor: Color.fromARGB(255, 202, 202, 202)),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.indigoAccent.shade700,
            secondary: Colors.tealAccent.shade700,
            brightness: Brightness.light),
        backgroundColor: Colors.indigoAccent.shade700,
        appBarTheme: AppBarTheme(
            foregroundColor: Colors.white,
            backgroundColor:
                Theme.of(navigatorKey.currentContext!).colorScheme.primary),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor:
                Theme.of(navigatorKey.currentContext!).colorScheme.primary,
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(255, 23, 36, 109)),
        //Theme.of(navigatorKey.currentContext!).colorScheme.primary),
        canvasColor: const Color.fromARGB(255, 202, 202, 202),
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(color: Color.fromARGB(255, 79, 79, 79)),
            bodyMedium: const TextStyle(color: Color.fromARGB(255, 79, 79, 79)),
            bodySmall: const TextStyle(color: Color.fromARGB(255, 79, 79, 79)),
            titleLarge: const TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            titleMedium: const TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            titleSmall: const TextStyle(
                fontFamily: 'Raleway',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            labelSmall:
                const TextStyle(color: Color.fromARGB(255, 33, 33, 33))),
        cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
            textTheme:
                CupertinoTextThemeData(primaryColor: CupertinoColors.white)),
      );
    } else {
      sw = true; // DARK MODE
      myTheme = ThemeData(
        drawerTheme: const DrawerThemeData(
            backgroundColor: Color.fromARGB(255, 75, 75, 75)),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.indigoAccent.shade700,
            secondary: Colors.tealAccent.shade700,
            brightness: Brightness.dark),
        backgroundColor: const Color.fromARGB(255, 4, 18, 38),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 4, 18, 38),
            foregroundColor: Colors.white),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color.fromARGB(255, 4, 18, 38),
            selectedItemColor: Color.fromARGB(255, 202, 202, 202),
            unselectedItemColor: Color.fromARGB(255, 88, 88, 88)),
        canvasColor: const Color.fromARGB(255, 75, 75, 75),
        textTheme: ThemeData.dark().textTheme.copyWith(
            bodyLarge: const TextStyle(
              color: Color.fromARGB(255, 202, 202, 202),
            ),
            bodyMedium: const TextStyle(
              color: Color.fromARGB(255, 202, 202, 202),
            ),
            bodySmall: const TextStyle(
              color: Color.fromARGB(255, 202, 202, 202),
            ),
            titleLarge: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 202, 202, 202),
            ),
            titleMedium: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 202, 202, 202),
            ),
            titleSmall: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 202, 202, 202),
            ),
            labelSmall: const TextStyle(color: CupertinoColors.systemGrey)),
        cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
            textTheme:
                CupertinoTextThemeData(primaryColor: CupertinoColors.white)),
      );
    }
    notifyListeners();
  }
}
