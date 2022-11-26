import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:seminar/main.dart';

void main()
{
  runApp(LiquSwipe());
}

class LiquSwipe extends StatelessWidget {
  final  pages=[
Container(color: Colors.red,
child: const Center(
    child:Text ('First Page',style: TextStyle(fontSize: 50),),),),
Container(color: Colors.green,
child: const Center(
    child:Text ('Second Page',style: TextStyle(fontSize: 50),),),),
Container(color: Colors.blue,
child: const Center(
    child:Text ('Third Page',style: TextStyle(fontSize: 50),),),),
Container(color: Colors.yellow,
child: const Center(
    child:Text ('Fourth Page',style: TextStyle(fontSize: 50),),),),
Container(color: Colors.purple,
child: const Center(
    child:Text ('Fifth Page',style: TextStyle(fontSize: 50),),),),
  ];
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: LiquidSwipe(
        pages:pages,
        slideIconWidget: const Icon(Icons.arrow_back, size: 50),
        enableLoop: true,
        positionSlideIcon: 0.5, // value is Less than 1
        waveType: WaveType.liquidReveal,
        initialPage: 2,
        enableSideReveal: true,
        disableUserGesture: false,
        fullTransitionValue: 800,
      ),

    ),
   );
  }

}

