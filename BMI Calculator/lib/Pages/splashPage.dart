import 'dart:async';
import 'package:bmi_calculator/Pages/bmiPage.dart';
import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BmiPage()));
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
     body:Container(
       width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xffa8edea),
                  Color(0xfffed6e3),
                ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
        ),
       child: Image.network!=null? Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.network('https://hips.hearstapps.com/hmg-prod/images/1076/bmi-myths-main-1515702962.jpg?crop=1xw:0.786xh;center,top&resize=1200:*'),
           Text('BMI APP',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.black),textScaleFactor: 1.5,)
         ],
       ):Center(
         child: CircularProgressIndicator(),
       )
      ),
    );
  }
}