import 'package:flutter/material.dart';
import 'package:islamic/moduls/azkar/azkar_screen.dart';
import 'package:islamic/moduls/azker_moring/azkar_moring.dart';

import 'package:islamic/moduls/surha_page/surha_page.dart';
import 'package:islamic/moduls/welcome/welcome_scree.dart';
import 'package:islamic/shared/style/color.dart';

import 'layout/choose_screen.dart';
import 'moduls/prayer_screen/prayer_screen.dart';
import 'moduls/tasbih/tasbih_screen.dart';

void main()
{
  runApp(IslamicApp()) ;
}

class IslamicApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme ,
      home:  const WelcomeScreen(),
    ) ;
  }
}
