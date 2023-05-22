import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:circular/circular.dart';
class TasbihScreen extends StatefulWidget {
  const TasbihScreen({Key? key}) : super(key: key);

  @override
  State<TasbihScreen> createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<TasbihScreen> {
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularSlider(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(-10, -10),
                        color: Colors.white,
                        blurRadius: 20,
                        spreadRadius: 1
                    ),
                    BoxShadow(
                        offset: Offset(10, 10),
                        color: Color.fromARGB(255, 158, 158, 158),
                        blurRadius: 20,
                        spreadRadius: 1)
                  ]),
              maxValue: 100,
              radius:100,
              color: const Color(0xffEEEEEE),
              sliderColor: const Color(0xff62CBDA),
              unSelectedColor: const Color(0xffD7DEE7),
              onDrag: (value) {
                setState(() {
                  counter = value as double;
                });
              },

              child: Text(
                counter.round().toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 35,) ,
            TextButton(

              onPressed: ()
              {
               if(counter >=999)
               {
                 setState(() {
                   counter=0 ;
                 });
               }else
               {
                 setState(() {
                   counter++ ;
                 });
               }
              },
              child: const Text('increase' , style: TextStyle(color: Color(0xff0f8488) , fontSize: 18),),
            ) ,
            TextButton(
              onPressed: ()
              {
                setState(() {
                  counter=0 ;
                });
              },
              child: const Text('reset' , style: TextStyle(color: Color(0xff0f8488) , fontSize: 18),),
            ) ,

          ],
        ),
      ),
    );
  }
}
