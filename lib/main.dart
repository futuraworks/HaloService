import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "layanan.dart";
import "home.dart";


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: Brightness.light,statusBarColor: Color(myColor),));
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => Home(),
        '/layanan': (context) => Layanan(),
      },
      debugShowCheckedModeBanner: false,
    )
  );
}
