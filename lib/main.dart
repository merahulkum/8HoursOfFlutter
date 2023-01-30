import 'package:c4/home_page.dart';
import 'package:c4/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomeScreen(),
        "/login":(context) => LoginPage()
      },
    );
  }
}
