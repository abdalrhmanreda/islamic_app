
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Item({
  required double width , 
  required double height ,
  required double borderRad ,
  required int color ,
  required String image ,
  required String title ,
  Function?function ,
  context ,
  Widget?widget
})=>InkWell(
  onTap: ()
  {
   NavigatTo(context, widget) ;
  },
  child:   Container(
    width: width,
    height:  height,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(borderRad) ,
      color: Color(color) ,
      boxShadow: const [
        BoxShadow(
          color: Color((0xff0f8488)) ,
          blurRadius: 5 ,
          spreadRadius: 2 ,
          blurStyle: BlurStyle.normal,
          offset: Offset(1 , 1.2)
        ) ,
      ] ,

    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image , width: 100, height: 80,) ,
          const Spacer() ,
          Text(
            title ,
            style: const TextStyle(
              fontSize: 22 ,
              color:Color(0xff0f8488) ,

            ),
          ) ,



        ],
      ),
    ),
  ),
) ;

void NavigatTo(context , widget)=>Navigator.push(context, MaterialPageRoute(builder: (context)=>widget)) ;


Widget text(String texts)=>Text(
  texts ,
  textWidthBasis: TextWidthBasis.parent,
  textAlign: TextAlign.center,
  style: const TextStyle(
      fontSize: 18 ,
    fontFamily: 'hafs'
  ),
) ;

Widget divider()=> Container(
  height: 1,
  width: double.infinity,
  color: Colors.grey[300],
  margin: const EdgeInsets.symmetric(vertical: 15),
) ;


Widget azkar({
  required String title ,
  context ,
  widget
})=>InkWell(
  onTap: ()
  {
      NavigatTo(context, widget) ;
  },
  child: Text(
    title ,
    style: const TextStyle(
      fontSize: 22 ,
      fontFamily: 'hafs'
    ),
  ),
) ;


Widget NubmerOfzekr({required String text})=>Text(
  text ,
  textAlign: TextAlign.start,
) ;