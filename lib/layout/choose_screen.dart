import 'package:flutter/material.dart';
import 'package:islamic/moduls/prayer_screen/prayer_screen.dart';
import 'package:islamic/moduls/tasbih/tasbih_screen.dart';
import 'package:islamic/shared/images.dart';

import '../moduls/azkar/azkar_screen.dart';
import '../moduls/quran/quran_lit.dart';
import '../shared/components/components.dart';
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Item(
                width: 150 ,
                height: 150 ,
                color: 0xffffffff ,
                title: 'Quran' ,
                image: ImagesClass.quran ,
                borderRad: 10 ,
                context: context ,
                widget: QuranListScreen()
              ),
              Item(
                  width: 150 ,
                  height: 150 ,
                  color: 0xffffffff ,
                  title: 'Tasbih' ,
                  image: ImagesClass.tasbih ,
                  borderRad: 10 ,
                context: context,
                widget: const TasbihScreen()
              ) ,
            ],
          ) ,
          const SizedBox(height: 50,) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Item(
                width: 150 ,
                height: 150 ,
                color: 0xffffffff ,
                title: 'Azkar' ,
                image: ImagesClass.moon ,
                borderRad: 10 ,
                context: context ,
                widget: AzkarScreen() ,
              ),
              Item(
                  width: 150 ,
                  height: 150 ,
                  color: 0xffffffff ,
                  title: 'Prayer' ,
                  image: ImagesClass.prey ,
                  borderRad: 10 ,
                context: context ,
                widget: PrayerScreen()
              ) ,
            ],
          ) ,
        ],
      ),
    );
  }
}
