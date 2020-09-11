import 'package:flutter/material.dart';
import 'package:toeic_test/src/link_image.dart';
class CustomTestNumber extends StatefulWidget {
  CustomTestNumber({@required this.title, @required this.des, this.score,@required this.onTap});
  String title;
  String des;
  final int score;
  Function onTap;
  @override
  _CustomTestState createState() => _CustomTestState();
}

class _CustomTestState extends State<CustomTestNumber> {
  LinkImage linkImage =new LinkImage();
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius:BorderRadius.only(
              //topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft:  Radius.circular(40),
                bottomRight: Radius.circular(25)
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 50,),
            Container(
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                  Text(widget.des,style: TextStyle(color: Colors.black38,fontSize: 10),)
                ],
              ),
            ),
            Container(
              width: 45,
              height: 45,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage(linkImage.checkScore(widget.score)),
                  //colorFilter: ColorFilter.mode(Colors.greenAccent, BlendMode.color),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(widget.score==null?'?':widget.score.toString(),style: TextStyle(color:widget.score==null?Colors.blueAccent:Colors.white,fontSize: 15),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
