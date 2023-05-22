import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// Color(0xffd2f1f4)
ThemeData lightTheme = ThemeData(
  // scaffoldBackgroundColor: const Color(0xffdbf6ff) ,
  scaffoldBackgroundColor: const Color(0xffffffff) ,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffffffff) ,
    elevation: 0 ,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Color(0xff0b5f62) ,
      ) ,
    ) ,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xffd2f1f4) ,
      statusBarBrightness: Brightness.dark ,
      statusBarIconBrightness: Brightness.dark
    ) ,
  ) ,
  textTheme: const TextTheme(
    bodyMedium:TextStyle(
      color: Color(0xff0f8488) ,
      fontFamily: 'Kanit'
    ) ,
  ),
) ;