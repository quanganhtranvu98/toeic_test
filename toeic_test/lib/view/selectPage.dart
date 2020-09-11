import 'package:flutter/material.dart';

import 'Screen1.dart';
import 'Screen2.dart';
class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  int selectedItemIndex=0;
  final tab=[
    Screen1(),
    Screen2(),
    Center(child:Text('Yeu thich')),
    Center(child:Text('Cai dat')),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[selectedItemIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage('lib/Assets/image/background.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildNavBarItem(Icons.home,0,true),
                buildNavBarItem( Icons.border_all,1, false, ),
                buildNavBarItem( Icons.star_border, 2, false, ),
                buildNavBarItem(Icons.settings, 3, false),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildNavBarItem(IconData icon,int index,bool isActi,){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedItemIndex=index;
        });
      },
      child: Container(
          width: MediaQuery.of(context).size.width/4.3,
          height: MediaQuery.of(context).size.height,

          child: Center(

            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color:index==selectedItemIndex?Colors.black12:Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Icon(icon,color: index==selectedItemIndex?Colors.blue:Colors.black12,),
              ),
            ),
          )
      ),
    );
  }
}

