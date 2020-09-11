import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class Customliner extends StatefulWidget {
  Customliner({
   @required this.start,
    @required this.finish,
    @required this.percent,
    @required this.backgroundColor,
    @required this.color,
});
  final Color color;
  final Color backgroundColor;
  final double percent;
  final int start;
  final int finish;
  @override
  _CustomlinerState createState() => _CustomlinerState();
}

class _CustomlinerState extends State<Customliner> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 30 ,
          height: 30,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: new ExactAssetImage('lib/Assets/image/circularBlue.png'),
                  fit: BoxFit.cover
              )
          ),
          child: Center(
            child: Text(widget.percent.toInt().toString(),style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w900),),
          ),
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            Text(widget.start.toString()+' ',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 14),),
            new LinearPercentIndicator(
              width: 170.0,
              lineHeight: 10.0,
              percent: (widget.percent/widget.finish)-(widget.start/widget.finish),

              backgroundColor: widget.backgroundColor,
              progressColor: widget.color,

            ),
            Text(' '+widget.finish.toString(),style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 14),),
          ],
        ),
      ],
    );
  }
}
