import 'package:flutter/material.dart';
import 'package:islamic/layout/choose_screen.dart';
import 'package:lottie/lottie.dart';

import '../quran/quran_lit.dart';
import '../surha_page/surha_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 1,) ,

          Lottie.network('https://assets5.lottiefiles.com/packages/lf20_ficjsilo.json') ,
          const Spacer(flex: 2,) ,
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(35),
            decoration: BoxDecoration(
              color: const Color(0xff0b5f62) ,
              borderRadius: BorderRadius.circular(10)
            ),
            child: MaterialButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (contxet)=>LayoutScreen()));
                } ,
                child: const Text(
                  'Next' ,
                  style: TextStyle(
                    color: Colors.white ,
                    fontFamily: 'Kanit' ,
                    fontSize: 16
                  ),
                ),
            ),
          ) ,

        ],
      ),
    );
  }
}
