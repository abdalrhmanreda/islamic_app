import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class SurhaPageScreen extends StatelessWidget {
   SurhaPageScreen(this.number);

    int? number ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
               const Text(
                   quran.basmala ,
                 style: TextStyle(
                   fontFamily: 'hafs' ,
                   fontSize: 25
                 ),
                 textAlign: TextAlign.center,
               ),
                const SizedBox(height: 10,) ,
                ListView.separated(
                  shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: quran.getVerseCount(number!),
                itemBuilder: (context, index) =>Text(
                  quran.getVerse(number!, index + 1, verseEndSymbol: true),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22 ,
                    fontFamily: 'hafs' ,
                    height: 2.5 ,

                  ),
                ),
                  separatorBuilder: (context , index)=>const SizedBox(height: 15,),
              ),
              ]
            ),
          ),
        ),
      ),

    );
  }
}
