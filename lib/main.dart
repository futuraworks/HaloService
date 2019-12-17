import "package:flutter/material.dart";
import 'package:flutter/services.dart';

final int myColor = 0xff47ccf5;

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: Brightness.light,statusBarColor: Color(myColor),));
  runApp(MaterialApp(home: Test(),debugShowCheckedModeBanner: false,));
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          elevation: 2.5,
          backgroundColor: Color(myColor),
          centerTitle: true,
          title: Card(
            elevation: 10.0,
            child: TextField(
              onTap: () => null,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                filled: true,
                fillColor: Colors.white
            ),),
          )
        )
      ),
      body: Column(
        children:<Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            child: Container(
              color: Colors.white,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))),
                elevation: 6.05,
                child: selectionIcon()
              )
            ),
          ),
          // Chip(label: Text("Your Location"),avatar: CircleAvatar(child:Icon(Icons.location_on) ,),),
          Padding(padding: EdgeInsets.all(15.0)),
              Stack(
                children: <Widget>[ // main paper grey
                  Container(color: Colors.white10,),
                  Wrap(runSpacing: 25.0,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      usrLoc(),
                      cardSelections(),
                      couponField(MediaQuery.of(context).size.width),
                    ]
                  ),
                ]
              ),
        ]
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(myColor),
        elevation: 20.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.person,size: 55.0),
            Icon(Icons.person,size: 55.0),
            Icon(Icons.person,size: 55.0),
            Icon(Icons.person,size: 55.0),
          ],
        ),
      ),
    );
  }

  Widget coupon(){
    return Card(
      elevation: 2.5,
      color: Color(myColor),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Text("30%",style: TextStyle(fontSize: 5.0)),
          Text("OFF",style: TextStyle(fontSize: 5.0)),
        ],)
      )
    );
  }

  Widget couponField(double w){
    return Container(
      width: w,
      child: Card(child:coupon(),elevation: 10.0,)
    );
  }

  Widget usrLoc(){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CircleAvatar(backgroundColor: Color(myColor),child: Icon(Icons.location_on,color: Colors.white,)),
        Wrap(direction: Axis.vertical ,
          children: <Widget>[
            Text("Your Location",style: TextStyle(fontWeight: FontWeight.w100),),
            Text("Ragunan, Jakarta Selatan",style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        Text("Change",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.w200)),
      ],
    );
  }

  Widget cardWidget(){
    return Container(
      color: Colors.transparent,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.5))),
        elevation: 5.5,
        child: Flex(direction: Axis.horizontal,
          children: <Widget>[
            Icon(Icons.accessibility,color: Color(myColor),
              size: 75.0,
            ),
            Wrap(
              direction: Axis.vertical,
              children: <Widget>[
                Text("Layanan Prima",
                style: TextStyle(fontWeight: FontWeight.bold)
              ),
              Padding(padding: EdgeInsets.all(5.0),),
              Text("Pelayanan Service Meliputi Pengecekan",
                style: TextStyle(fontWeight: FontWeight.w100),),
              Text("Mesin, Rem dan AC",
                style: TextStyle(fontWeight: FontWeight.w100),),
              ],
            )
          ]
        ),
      ),
    );
  }

  Widget cardSelections(){
    return Wrap(spacing: 15.0,
      direction: Axis.vertical,
      children: <Widget>[
        // Card List
      cardWidget(),
      cardWidget(),
      cardWidget(),
    ]);
  }

  Widget selectionIcon(){
    return Padding(padding: EdgeInsets.all(12.5),
        child: Wrap(alignment: WrapAlignment.spaceAround,direction: Axis.horizontal , spacing: 20.0,
        children: <Widget>[
        // Icon list below appbar search
          Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.black),radius: 25.5,backgroundColor: Color(myColor)),
              Text("Machine",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.black),radius: 25.5,backgroundColor: Color(myColor)),
              Text("Machine",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),

          Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.black),radius: 25.5,backgroundColor: Color(myColor)),
              Text("Machine",style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.black,),radius: 25.5,backgroundColor: Color(myColor)),
              Text("Machine",style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],// end of icon list
      )
    );
  }
}
