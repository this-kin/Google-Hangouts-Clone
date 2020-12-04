import 'package:chat_app/views/home.dart';
import 'package:flutter/material.dart';

ThemeData isDark = ThemeData.dark();
void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: isDark,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: HomePage(),
    );
  }
}
