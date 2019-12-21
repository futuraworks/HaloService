import "package:flutter/material.dart";
import "package:auto_size_text/auto_size_text.dart";

final int myColor = 0xff75cbd5;

Widget paketanWidget(){
  return Container(
    // height: 100.0,
    // width: 250.0,
    padding: EdgeInsets.fromLTRB(25.5, 2.5, 25.5, 2.5),
    color: Colors.transparent,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.5))),
      elevation: 2.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.accessibility,
            color: Color(myColor),
            size: 75.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Layanan Prima",
              style: TextStyle(fontWeight: FontWeight.bold,
                color: Color(myColor)
                )
              ),
              Padding(padding: EdgeInsets.all(5.0),),
              SizedBox(
                width: 225.0,
                child: Text("Pelayanan Service Meliputi Pengecekan Mesin, Rem dan AC",
                maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
              ),
            ],
          )
        ]
      ),
    ),
  );
}
