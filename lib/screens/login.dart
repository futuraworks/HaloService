// import "package:nima/nima_actor.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      backgroundColor: Color(0xff75cbe5),
      body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // SvgPicture.asset(
              //   "assets/logo.svg"
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.5),
                child:TextField(
                  style: TextStyle(color: Color(0xff75cbd5)),
                  cursorColor: Color(0xff75cbe5) ,
                  // textAlignVertical: TextAlignVertical(y: 1.0),
                  onTap: () => null,
                  decoration: InputDecoration(
                    hasFloatingPlaceholder: false,
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.blue),
                    // suffix: Text("dwd"),
                    hintText: "",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(7.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(7.5)),
                    ),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () => null,
                      icon: Icon(Icons.person_pin,color: Color(0xff75cbd5),),),
                    filled: true,
                    fillColor: Colors.white
                   ),
                 ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.5),
                child:TextField(
                style: TextStyle(color: Color(0xff75cbd5)),
                cursorColor: Color(0xff75cbe5) ,
                 textAlignVertical: TextAlignVertical(y: 1.0),
                 onTap: () => null,
                 obscureText: true,
                 decoration: InputDecoration(
                   hasFloatingPlaceholder: false,
                   labelText: "Password",
                   labelStyle: TextStyle(color: Colors.blue),
                   // suffix: Text("dwd"),
                   hintText: "",
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.blue),
                     borderRadius: BorderRadius.all(Radius.circular(7.5)),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.blue),
                     borderRadius: BorderRadius.all(Radius.circular(7.5)),
                   ),
                   border: InputBorder.none,
                   suffixIcon: IconButton(
                     onPressed: () => null,
                     icon: Icon(Icons.visibility_off,color: Color(0xff75cbd5),),),
                   filled: true,
                   fillColor: Colors.white
                  ),
                ),
              ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/'),
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      width: 75.0,
                      height: 35.0,
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(12.5))),
                      child: Text("Login",
                        style: TextStyle(
                          fontSize: 17.5,
                          color: Colors.blue),
                          textAlign: TextAlign.center,
                        )
                    ),
                  )
                )
            ],
          )
    );
  }
}
