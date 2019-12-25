import 'package:flutter/material.dart';

final int myColor = 0xff6395d0;

Widget usrLocWidget(){
  return Container(
    padding: EdgeInsets.fromLTRB(17.5, 25.5, 17.5, 7.5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 5.5),
          child: Material(
            shape: CircleBorder() ,
            elevation: 1.5,
            child: CircleAvatar(
              backgroundColor: Color(0xff6395d0),
              child: Icon(Icons.location_on,color: Colors.white,)
            )
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 77.5),
              child: Text("Your Location",style: TextStyle(fontWeight: FontWeight.w100),textAlign: TextAlign.start,),
            ),
            Text("Ragunan, Jakarta Selatan",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),textAlign: TextAlign.start)
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 75.5),
          child: Text("Change",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.w200)),
        ),
      ],
    ),
  );
}
