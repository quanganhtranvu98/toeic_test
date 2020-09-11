import 'dart:math';

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
class CustomCircular extends StatefulWidget {
  CustomCircular({@required this.score});
  final int score;
  @override
  _CustomCircularState createState() => _CustomCircularState();
}

class _CustomCircularState extends State<CustomCircular> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //decoration: BoxDecoration(color: Colors.purple),
          child: CircularStepProgressIndicator(
            totalSteps: 980,
            currentStep: (widget.score-10),
            stepSize: 10,
            selectedColor: Colors.blueAccent,
            unselectedColor: Colors.grey[100],
            // padding: pi / 80,
            width: 100,
            height: 100,
            startingAngle: 16.156*pi/6,
            arcSize: pi * 2 / 3 *2,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(25),
          child: Container(
            width: 50 ,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new ExactAssetImage('lib/Assets/image/circularBlue.png'),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
              child: Text(widget.score.toString(),style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w900),),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80,left: 8),
              child: Text('10',style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w900,
                  fontSize: 12
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 81,left: 55),
              child: Text('900',style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w900,
                  fontSize: 12
              ),),
            ),
          ],
        ),
      ],
    );
  }
}
