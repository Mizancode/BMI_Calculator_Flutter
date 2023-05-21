import 'package:bmi_calculator/Pages/splashPage.dart';
import 'package:bmi_calculator/utils/myRoutes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Pages/bmiPage.dart';
void main()=>runApp(MainPage());
class MainPage extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      initialRoute: MyRoutes.SplashPage,
      routes: {
        MyRoutes.BmiPage:(context)=>BmiPage(),
        MyRoutes.SplashPage:(context)=>SplashPage(),
      },
    );
  }
}

