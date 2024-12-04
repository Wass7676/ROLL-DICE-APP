import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startalignment=Alignment.topLeft;
const endalignment=Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
    //constructor
    const GradientContainer(this.colors,{super.key,});
    final List<Color> colors;
    
    
    @override
    Widget build(context){
        return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors:colors,
                    begin:startalignment,
                    end:endalignment,
                )
            ) ,
            child:  const Center(
                child:DiceRoller(),
              ),
        );
    }
}
