import 'package:QuizApp/screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:QuizApp/screens/RegisterScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color yellow = Color(0xffeeb655);
  Color brown = Color(0xffd38851);
  Color green = Color(0xffa8cb77);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: brown,
        primaryColor: yellow,
        primarySwatch: Colors.blue,
      ),
      home: RegisterScreen(),
    );
  }
}
