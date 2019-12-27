import "package:flutter/material.dart";

Widget layananWidget(index){

  return Padding(
    padding: EdgeInsets.all(12.5),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5)),
      color: Color(0xff6395d0),
        elevation: 7.5,
        child: Stack(
          children: <Widget>[
            // Image.network(
            //   "ded",
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(7.5),
                  child: Text(
                    "ded",
                    style: TextStyle(color: Colors.white,fontSize: 22.5,fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
  );
}
