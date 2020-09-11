import 'package:flutter/material.dart';
class EditFavotite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:0,right: 0),
      child: GestureDetector(
        onTap: () => print('Favorite'),
        child: Container(
          width: 70,
          child: Row(
            children: [
              Image(image: AssetImage('lib/Assets/image/starF.png'),width: 10,height: 10,),
              Text(' Favourite',style: TextStyle(color: Colors.indigo,fontSize: 12,fontStyle: FontStyle.italic),),
            ],
          ),
        ),
      ),
    );
  }
}
