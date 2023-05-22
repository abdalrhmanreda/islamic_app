import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:islamic/moduls/surha_page/surha_page.dart';
import 'package:islamic/shared/components/components.dart';
import 'package:quran/quran.dart';
// import 'package:quran/quran.dart';

class QuranListScreen extends StatelessWidget {
  const QuranListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
          'myQuran' ,
          style: TextStyle(
            fontFamily: 'Signika' ,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Color(0xff0f8488)
          ),

        ) ,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
            itemBuilder: (context , index)=>Container(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SurhaPageScreen(index+1))) ;
                },
                child: Row(
                  children: [
                  Container(
                    alignment: Alignment.center,
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle ,
                      color: Color(0xff1b7174) ,
                      border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid , color: Colors.white))
                    ),
                    child: Text(
                      '${index+1}' ,
                      style: const TextStyle(
                        color: Colors.white ,
                        fontSize: 12
                      ),
                    ),
                  ) ,
                    const SizedBox(width: 15,) ,
                    Text(
                      getSurahName(index+1) ,
                      style: const TextStyle(
                        fontSize: 21 ,
                        fontFamily: 'hafs'
                      ),
                    ) ,
                    const Spacer() ,
                    Text(
                      getSurahNameArabic(index+1) ,
                      style: const TextStyle(
                          fontSize: 21 ,
                        fontFamily: 'hafs'
                      ),
                    ) ,

                  ],
                ),
              ),
            ),
            separatorBuilder: (context , index)=>Container(
              margin: const EdgeInsets.all(5),
              height: 1,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            itemCount:totalSurahCount  ,
        ),
      ) ,


    );
  }
}

// ListView.builder(
//         itemCount: totalSurahCount,
//         itemBuilder: (BuildContext context, int index) {
//           int surahNumber = index + 1;
//           String surahName = getSurahName(surahNumber);
//           return ListTile(
//             title: Text('$surahNumber. $surahName'),
//           );
