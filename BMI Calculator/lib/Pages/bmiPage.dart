import 'package:flutter/material.dart';
class BmiPage extends StatefulWidget{
  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  String result='';
  var bmi=0.0;
  bool OnChanged=true;
  RangeValues weightvalue=RangeValues(0, 100);
  RangeValues heightvalue=RangeValues(1, 2);
  @override
  Widget build(BuildContext context) {
    RangeLabels weightlabel=RangeLabels(weightvalue.start.toString(),weightvalue.end.toString());
    RangeLabels heightlabel=RangeLabels(heightvalue.start.toString(),heightvalue.end.toString());
    bmiCalculate(var finalWeight,var finalHeight){
      bmi=finalWeight/(finalHeight*finalHeight);
      if(bmi<18.5){
        result='You Are In UnderWeight Category.';
      }else if(bmi>=18.5 && bmi<=24.9){
        result='You Are In HealthyWeight Category.';
      }else if(bmi>24.9 && bmi<=29.9){
        result='You Are OverWeight Category.';
      }else{
        result='Obesity Category.';
      }
      OnChanged=false;
      print(bmi);
      setState(() {

      });
    }

   return Scaffold(
     body: OnChanged ? Container(
       height:double.infinity,
       decoration: BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Color(0xfff78ca0),
             Color(0xfff9748f),
             Color(0xfffd868c),
             Color(0xfffe9a8b),
           ],
           stops: [0.0,0.19,0.6,1.0],
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
         ),
       ),
       child: SafeArea(
         child: Container(
           width: double.infinity,
           padding: EdgeInsets.all(25.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 105.0),
                child: Text('BMI CALCULATOR',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              SizedBox(
                height: 30,
              ),
              Text('WEIGHT IN KG',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
              RangeSlider(
                  values: weightvalue,
                  labels: weightlabel,
                  divisions: 100,
                  min: 0,
                  max: 100,
                  activeColor: Colors.black,
                  onChanged: (newValue){
                    weightvalue=newValue;
                    setState(() {

                    });
                  },
              ),
              SizedBox(
                height: 20,
              ),
              Text('HEIGHT IN METER',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
              RangeSlider(
                values: heightvalue,
                labels: heightlabel,
                divisions: 100,
                min: 1,
                max: 2,
                activeColor: Colors.black,
                onChanged: (Value){
                  heightvalue=Value;
                  setState(() {

                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue,
                child: InkWell(
                  onTap: (){
                    bmiCalculate(weightvalue.start,heightvalue.start);
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    alignment: Alignment.center,
                    child: Text('Calculate',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
           ),
         ),
       ),
     ): Column(
       children: [
         Container(
           height:420,
           decoration: BoxDecoration(
             gradient: LinearGradient(
               colors: [
                 Color(0xfff78ca0),
                 Color(0xfff9748f),
                 Color(0xfffd868c),
                 Color(0xfffe9a8b),
               ],
               stops: [0.0,0.19,0.6,1.0],
             ),
           ),
           child: SafeArea(
             child: Container(
               width: double.infinity,
               padding: EdgeInsets.all(25.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 105.0),
                     child: Text('BMI CALCULATOR',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   Text('WEIGHT IN KG',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                   RangeSlider(
                     values: weightvalue,
                     labels: weightlabel,
                     divisions: 100,
                     min: 0,
                     max: 100,
                     activeColor: Colors.black,
                     onChanged: (newValue){
                       weightvalue=newValue;
                       setState(() {

                       });
                     },
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Text('HEIGHT IN METER',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                   RangeSlider(
                     values: heightvalue,
                     labels: heightlabel,
                     divisions: 100,
                     min: 1,
                     max: 2,
                     activeColor: Colors.black,
                     onChanged: (Value){
                       heightvalue=Value;
                       setState(() {

                       });
                     },
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Material(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.blue,
                     child: InkWell(
                       onTap: (){
                         bmiCalculate(weightvalue.start,heightvalue.start);
                       },
                       child: Container(
                         height: 40,
                         width: 100,
                         alignment: Alignment.center,
                         child: Text('Calculate',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(
               height: 40.0,
             ),
             Card(child: Text('YOUR BMI IS:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.deepPurple),textScaleFactor: 1.2,)),
             SizedBox(
               height: 10.0,
             ),
             Card(child: Text('${bmi.toStringAsFixed(2)}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),textScaleFactor: 1.2,)),
             SizedBox(
               height: 10.0,
             ),
             Text('${result}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.green),),
           ],
         ),
       ],
     )
   );
  }
}




//background-image: linear-gradient(to right, #f78ca0 0%, #f9748f 19%, #fd868c 60%, #fe9a8b 100%);