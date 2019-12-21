import 'package:flutter/material.dart';

final int myColor = 0xff75cbd5;

Widget layananWidget(){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 7.5),
    child: Column(
      children: <Widget>[
        Material(shape: CircleBorder() , elevation: 1.5, child: CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.white),radius: 25.5,backgroundColor: Color(myColor))),
        Padding(padding: EdgeInsets.all(2.5)),
        Text("Machine",style: TextStyle(fontWeight: FontWeight.bold,color: Color(myColor),shadows: [Shadow(color: Colors.white10,offset: Offset(0.5,0.5),blurRadius: 0.5)],)),
      ],
    ),
  );
}
