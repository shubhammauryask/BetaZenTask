import 'package:betazen/Model/model_screen1.dart';
import 'package:betazen/Widget/widget_screen1.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override

  Widget build(BuildContext context) {
    var list =[
      Screen1Model(startTime: '22:55 PM', endTime: '05:20 AM', mainAmount: "428", mainPrice: '377', discountAmount: '51', totalTime: '6h 25m', totalSeat: '10', singleSeat: '6', title: 'Tata AC Seater/Sleeper 49 Seats'),
      Screen1Model(startTime: '22:55 PM', endTime: '05:20 AM', mainAmount: "428", mainPrice: '377', discountAmount: '51', totalTime: '6h 25m', totalSeat: '10', singleSeat: '6', title: 'Tata AC Seater/Sleeper 49 Seats'),
      Screen1Model(startTime: '22:55 PM', endTime: '05:20 AM', mainAmount: "428", mainPrice: '377', discountAmount: '51', totalTime: '6h 25m', totalSeat: '10', singleSeat: '6', title: 'Tata AC Seater/Sleeper 49 Seats'),
    ];
    return Scaffold(
      floatingActionButton: Image.asset('assets/images/whatsapp.png',height: 50,),
        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: list.length,
              itemBuilder:(context , index){
                return Screen1Widget(context,list[index]);
              }
          ),
        ),
    );
  }
}
