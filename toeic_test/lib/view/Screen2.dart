import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toeic_test/widgets/screen2/custom_test.dart';
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
                      Colors.indigo,
                      Colors.white,
                    ],
                    stops: [0.001,0.5]
                )
            ),
          ),
              SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      child: Center(
                        child: Text('Your Test',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)
                        )
                      ),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 20,),
                          CustomTestNumber(
                            title: 'Test 1',
                            des: '8/9/2020',
                            onTap: () => print('Test1'),
                            score: 990,

                          ),
                          SizedBox(height: 20,),
                          CustomTestNumber(
                            title: 'Test 28',
                            des: '8/9/2020',
                            onTap: () => print('Test28'),
                            score: 400,

                          ),
                          SizedBox(height: 20,),
                          CustomTestNumber(
                            title: 'Test 12',
                            des: '8/9/2020',
                            onTap: () => print('Test12'),
                            score: 100,

                          ),
                          SizedBox(height: 20,),
                          CustomTestNumber(
                            title: 'Test 3',
                            des: '8/9/2020',
                            onTap: () => print('Test3'),
                            //score: 880,

                          ),
                          SizedBox(height: 20,),
                          CustomTestNumber(
                            title: 'Test 4',
                            des: '8/9/2020',
                            onTap: () => print('Test1'),
                            //score: 880,

                          ),
                          SizedBox(height: 20,),
                          CustomTestNumber(
                            title: 'Test 5',
                            des: '8/9/2020',
                            onTap: () => print('Test5'),
                            //score: 880,

                          ),
                          SizedBox(height: 20,),
                          CustomTestNumber(
                            title: 'Test 6',
                            des: '8/9/2020',
                            onTap: () => print('Test5'),
                            //score: 880,

                          ),
                          SizedBox(height: 20,),
                          CustomTestNumber(
                            title: 'Test 7',
                            des: '8/9/2020',
                            onTap: () => print('7'),
                            //score: 880,

                          ),

                        ],
                        
                      ),
                    )
                  ],
                ),
              )
          ]
          )


        )
    );
  }
}
