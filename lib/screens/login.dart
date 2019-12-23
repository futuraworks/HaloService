import "package:nima/nima_actor.dart";
import "package:nima/nima.dart";
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context){
    return NimaActor(
      "assets/truck.nma2d",
      alignment: Alignment.center,
      animation: "Untitled-ic",
  );
  }
}
