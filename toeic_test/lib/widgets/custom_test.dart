import 'package:flutter/material.dart';
class CustomTest extends StatelessWidget {
  CustomTest({@required this.image,this.title,this.decoration,this.imageA, @required this.onTap});
  final String image;
  final String title;
  final String decoration;
  final String imageA;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.white
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image(
                image: AssetImage(image),width: 50,
              ),
              SizedBox(width:15),
              Container(
                width: 220,
                // decoration: BoxDecoration(color: Colors.lime),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(decoration,style: TextStyle( color: Colors.grey,fontSize: 13),),
                  ],
                ),
              ),
              SizedBox(width: 25,),
              Container(
                height: 30,
                width: 40,
                child: Image(
                  image: AssetImage(imageA,),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
