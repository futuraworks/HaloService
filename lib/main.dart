import 'package:hasura_connect/hasura_connect.dart';
import "package:states_rebuilder/states_rebuilder.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "screens/layanan.dart";
import "screens/login.dart";
import "api/backend.dart";
import "home.dart";
//
// HasuraConnect hasura = HasuraConnect(
//   "https://hasura-futuraworks.cloud.okteto.net/v1/graphql",
//   headers: {'x-hasura-admin-secret': 'hasuraarusah'},
// );

void main() {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light
    )
  );
  runApp(
    Injector(
      inject: [Inject<BackEnd>(()=> BackEnd())],
      builder: (context){
        return MaterialApp(
          // FUCK IT THEME
          theme: ThemeData(
            canvasColor: Colors.transparent,
            accentColor: Color(0xff6395d0),
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/login',
          routes: {
            '/': (context) => Home(),
            '/login': (context) => Login(),
            '/layanan': (context) => Layanan(),
          },
          debugShowCheckedModeBanner: false,
        );
      },
    )
  );
}
