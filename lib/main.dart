import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "screens/paketan.dart";
import "screens/layanan.dart";
import "home.dart";

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: Brightness.light,statusBarColor: Color(0xff75cbd5)));
  runApp(
    MaterialApp(
      // FUCK IT THEME
      // theme: ThemeData(
        // primarySwatch: MaterialColor( 0xff75cbd5), Color(0xff75cbd5) ),
        // cardTheme: CardTheme(elevation: 10.0),
        // primaryColor: Color(0xff75cbd5),
        // primaryTextTheme: TextTheme(
        //   subtitle: TextStyle(color: Color(0xff75cbd5)),
        //   title: TextStyle(color: Colors.white),
        //   body1: TextStyle(color: Color(0xff75cbd5),
        // )),
        // backgroundColor: Color(0xff75cbd5),
      // ),
      initialRoute: '/',
      routes: {
        '/':(context) => Home(),
        '/paketan': (context) => Paketan(),
        '/layanan': (context) => Layanan(),
      },
      debugShowCheckedModeBanner: false,
    )
  );
}
