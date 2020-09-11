import 'package:flutter/material.dart';
class CustomTitle extends StatelessWidget {
  CustomTitle({@required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: Text(' '+title,style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.w800,
          fontSize: 30
      ),),
    );
  }
}
