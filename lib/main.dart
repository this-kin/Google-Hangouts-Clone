import 'package:chat_app/home.dart';
import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    //Set themedata darkMode and LightMode
    theme: ThemeData(
      canvasColor: bkgrdColor,
    ),
  ));
}
