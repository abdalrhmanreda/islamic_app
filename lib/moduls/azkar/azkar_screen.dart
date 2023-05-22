import 'package:flutter/material.dart';
import 'package:islamic/shared/components/components.dart';

import '../azker_moring/azkar_moring.dart';
class AzkarScreen extends StatelessWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            azkar(
                title: 'اذكار الصباح' ,
                context: context ,
                widget: const AzkarMoringScreen() ,
            ) ,
            divider() ,
            azkar(
              title: 'اذكار المساء' ,
              context: context ,
              widget: const AzkarMoringScreen() ,
            ) ,
            divider() ,
            azkar(
              title: 'اذكار الوضوء' ,
              context: context ,
              widget: const AzkarMoringScreen() ,
            ) ,
            divider() ,
            azkar(
              title: 'اذكار المنزل' ,
              context: context ,
              widget: const AzkarMoringScreen() ,
            ) ,
            divider() ,
            azkar(
              title: 'اذكار الآذان' ,
              context: context ,
              widget: const AzkarMoringScreen() ,
            ) ,
            divider() ,
            azkar(
              title: 'اذكار المسجد' ,
              context: context ,
              widget: const AzkarMoringScreen() ,
            ) ,
            divider() ,
            azkar(
              title: 'اذكار الخلاء' ,
              context: context ,
              widget: const AzkarMoringScreen() ,
            ) ,
            divider() ,
            azkar(
              title: 'اذكار الطعام' ,
              context: context ,
              widget: const AzkarMoringScreen() ,
            ) ,
            divider() ,
            azkar(
              title: 'اذكار الحج والعمرة ' ,
              context: context ,
              widget: const AzkarMoringScreen() ,
            ) ,
            divider()
          ],
        ),
    );
  }
}
