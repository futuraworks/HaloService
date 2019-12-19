import "package:flutter/material.dart";

final int myColor = 0xff75cbd5;

Widget paketanWidget(){
  return Wrap(spacing: 15.0,
    direction: Axis.vertical,
    children: <Widget>[
      Container(
        color: Colors.transparent,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.5))),
          elevation: 2.5,
          child: Flex(direction: Axis.horizontal,
            children: <Widget>[
              Icon(Icons.accessibility,
                color: Color(myColor),
                size: 75.0,
              ),
              Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Text("Layanan Prima",
                  style: TextStyle(fontWeight: FontWeight.bold,
                    color: Color(myColor)
                  )
                ),
                Padding(padding: EdgeInsets.all(5.0),),
                Text("Pelayanan Service Meliputi Pengecekan",
                  style: TextStyle(fontWeight: FontWeight.w100),),
                Text("Mesin, Rem dan AC",
                  style: TextStyle(fontWeight: FontWeight.w100),),
                ],
              )
            ]
          ),
        ),
      ),
  ]);
}
