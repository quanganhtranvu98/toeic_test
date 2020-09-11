import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toeic_test/widgets/Customliner.dart';
import 'package:toeic_test/widgets/Custompress.dart';
import 'package:toeic_test/widgets/custom_circular.dart';
import 'package:toeic_test/widgets/custom_test.dart';
import 'package:toeic_test/widgets/custom_title.dart';
import 'package:toeic_test/widgets/edit_favorite.dart';
class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int selectedItemIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blueGrey,
                    Colors.black12,
                  ],
                  stops: [0.001,0.5]
                )
              ),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 60.0
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTitle(
                      title: 'Full Test',
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 50),
                      child: Container(
                        width: double.infinity,
                        child: Text('Start with a quick check of your Toeic score, please tap to full test now',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14
                        ),),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 220,
                                  //decoration: BoxDecoration(color: Colors.indigo),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('11:12,Saturday,8 Aug,2020',style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 14
                                      ),),
                                      SizedBox(height: 25,),
                                      Container(
                                        width: 75,
                                        height: 23,
                                        decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Center(
                                          child: Text('Listening',style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          ),),
                                        ),
                                      ),
                                      SizedBox(height: 25,),
                                      Customliner(
                                        start: 5,
                                        finish: 450,
                                        percent: 400 ,//score reading
                                        backgroundColor: Colors.black12,
                                        color: Colors.indigo,
                                      ),
                                      SizedBox(height: 25,),
                                      Container(
                                        width: 75,
                                        height: 23,
                                        decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Center(
                                          child: Text('Reading',style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ),
                                      ),
                                      SizedBox(height: 25,),
                                      Customliner(
                                        start: 5,
                                        finish: 450,
                                        percent: 65,//score
                                        backgroundColor: Colors.black12,
                                        color: Colors.indigo,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5,),
                                 Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Custompress(),
                                    SizedBox(height: 25,),
                                    Container(
                                      width: 120,
                                      child: Center(
                                        child: Text('Total score',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                      ),
                                    ),
                                    SizedBox(height: 25,),
                                    CustomCircular(
                                      score: 563,
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage('lib/Assets/image/circleColor.png',),width: 10,height: 10,
                                        ),
                                        Text(' Target 450',style: TextStyle(color: Colors.indigo,fontSize: 8,fontWeight: FontWeight.bold),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 50,),
                            EditFavotite()
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                    CustomTitle(
                      title: 'Full Test',
                    ),
                    SizedBox(height: 35,),
                    CustomTest(
                      image: 'lib/Assets/image/reading.png',
                      title: 'Reading',
                      decoration: '50 days study plan',
                      imageA: 'lib/Assets/image/nextP.png',
                      onTap: () => print('Reading'),
                    ),
                    SizedBox(height: 15,),
                    CustomTest(
                      image: 'lib/Assets/image/reading.png',
                      title: 'Listening',
                      decoration: '50 days study plan',
                      imageA: 'lib/Assets/image/nextP.png',
                      onTap: () => print('Listening'),
                    ),
                    SizedBox(height: 15,),
                    CustomTest(
                      image: 'lib/Assets/image/reading.png',
                      title: 'Writing',
                      decoration: '50 days study plan',
                      imageA: 'lib/Assets/image/nextP.png',
                      onTap: () => print('Writing'),
                    ),



                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }

}
