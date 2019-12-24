import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

Widget layananWidget(index){
  var svgName = [
    "assets/mechanic.svg",
    "assets/ban.svg",
    "assets/service.svg",
    "assets/obeng.svg",
    "assets/checking.svg",
  ];

  var kalimat = [
    "Service",
    "Technician",
    "Machine",
    "Tire",
    "Checking",
  ];

  return Padding(
    padding: EdgeInsets.all(12.5),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5)),
      color: Color(0xff6395d0),
        elevation: 5.0,
        child: Stack(
          children: <Widget>[
            SvgPicture.asset(
              svgName[index],
            ),
            Text(
              kalimat[index],
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
  );
}
