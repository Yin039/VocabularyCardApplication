import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'RobotoCondensed',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(101, 118, 85, 1),
          ),
          bodyText1: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(101, 118, 85, 1),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(101, 118, 85, 1),
              onPrimary: Colors.white,
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              textStyle: const TextStyle(fontSize: 15)),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(101, 118, 85, 1),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
