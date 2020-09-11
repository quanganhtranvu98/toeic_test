import 'package:flutter/material.dart';
class Custompress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> print('onTap'),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20),


        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Text('Full test now',style: TextStyle(color: Colors.blue),),
              SizedBox(width: 10,),
              Image(image: AssetImage('lib/Assets/image/next.png',),width: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
