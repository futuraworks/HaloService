import 'package:flutter/material.dart';
final int myColor = 0xff75cbd5;

Widget usrLocWidget(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25.5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Material(shape: CircleBorder() , elevation: 1.5, child: CircleAvatar(backgroundColor: Color(myColor),child: Icon(Icons.location_on,color: Colors.white,)),),
        Column(
          children: <Widget>[
            Text("Your Location",style: TextStyle(fontWeight: FontWeight.w100),),
            Text("Ragunan, Jakarta Selatan",style: TextStyle(fontWeight: FontWeight.bold,color: Color(myColor)))
          ],
        ),
        Text("Change",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.w200)),
      ],
    ),
  );
}
