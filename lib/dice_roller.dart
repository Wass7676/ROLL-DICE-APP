import 'package:flutter/material.dart';
import 'dart:math';

final randomaizer=Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return  _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{

   var currentdiceroll=2;
  
   
    void rolldice(){
            setState(() {
              currentdiceroll=randomaizer.nextInt(6)+1;
      });
   }
 @override
 Widget build(BuildContext context) {
   return Column(
                 mainAxisSize: MainAxisSize.min,
                 children:[
                   Image.asset(
                     'assets/dice-images/dice-$currentdiceroll.png',
                     width: 200,
                     ),
                   TextButton(
                     onPressed: rolldice,
                     style: TextButton.styleFrom(
                       padding: const EdgeInsets.only(top: 40),
                       foregroundColor:Colors.white,
                       textStyle: const TextStyle(fontSize: 35)
                     ),
                     child: const Text('Roll Dice'),
                     ),
               ],
               );
  }
}