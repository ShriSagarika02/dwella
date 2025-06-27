import 'package:flutter/material.dart';
import 'package:flutter_application_3/splash_screen.dart';
//import 'MyHomePage.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}
