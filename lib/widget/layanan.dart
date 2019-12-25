import "package:flutter/material.dart";

Widget layananWidget(index){
  var svgName = [
    "assets/service.png",
    "assets/technician.png",
    "assets/machine.png",
    "assets/tire.png",
    "assets/checking.png",
    "assets/altmore.png",
  ];

  var kalimat = [
    "Service",
    "Technician",
    "Machine",
    "Tire",
    "Checking",
    "More"
  ];

  return Padding(
    padding: EdgeInsets.all(12.5),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5)),
      color: Color(0xff6395d0),
        elevation: 7.5,
        child: Stack(
          children: <Widget>[
            Image.asset(
              svgName[index],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(7.5),
                  child: Text(
                    kalimat[index],
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
