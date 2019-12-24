import "package:flutter/material.dart";
final int myColor = 0xff75cbd5;

Widget paketanWidget(){
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5)),
    color: Color(0xff75cbd5),
      elevation: 5.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.person,size: 80.0, color: Colors.white,),
          Text("fef Titik Pengecekan", style: TextStyle(color: Colors.white),),
          Text("Rp. rfw", style: TextStyle(color: Colors.white)),
          SizedBox(height: 10.0,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.5)),color: Colors.white),
            child: Text(
              "Pesan",
              style: TextStyle(
                color:  Color(0xff75cbd5),
                fontWeight: FontWeight.bold,fontSize: 17.5)
            )
          ),
          SizedBox(height: 10.0,)
        ],
      ),
    );
}
