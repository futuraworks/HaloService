import "package:flutter/material.dart";
import "widget/layanan.dart";
import "widget/location.dart";
import "widget/paketan.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // floatingActionButton: FloatingActionButton(backgroundColor:Color(myColor),elevation: 5.0,
      // onPressed: () => null ,
      // child: Icon(Icons.person)),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 10.0,
            pinned: true,
            backgroundColor: Color(0xff75cbd5),
            title: Text("Halo Service",
              style: TextStyle(
                shadows: [Shadow(color: Colors.grey,offset: Offset(0.5,0.5),blurRadius: 5.0)],
                fontWeight: FontWeight.bold,
                fontSize: 25.0)
              ),
            expandedHeight: 125.0, // set app bar height
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: <Widget>[
                  SizedBox(height: 75.0,), // space between title and search
                  Padding( padding: EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.transparent,
                      height: 50.0, //search height
                      width: double.infinity,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 7.5,
                        child: TextField(
                          onTap: () => null,
                          decoration: InputDecoration(
                            hintText: "Mau Cari Apa ... ",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search),
                             // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            filled: true,
                            fillColor: Colors.white
                           ),
                         ),
                      )
                    ),
                  )
                ],
              ),
              // background: TextField(
              //      onTap: () => null,
              //      decoration: InputDecoration(
              //        suffixIcon: Icon(Icons.search),
              //        // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              //        filled: true,
              //        fillColor: Colors.white
              //    ),
              //  ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              bodyWidget(context),
            ]),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Coupon",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,
                    color: Color(0xff75cbd5)
                  ))
                ],)
            ),),
        ],
      ),
      //  ###  BOTTOM BAR , Enabled  ###
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff75cbd5),
        elevation: 100.0,
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Icon(Icons.home,size: 32.0,color:Colors.white ),
                  Text("Home",style: TextStyle(fontSize: 12.0, color:Colors.white))
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Icon(Icons.history,size: 32.0,color:Colors.white ),
                  Text("History",style: TextStyle(fontSize: 12.0, color:Colors.white))
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Icon(Icons.person,size: 32.0, color:Colors.white ,),
                  Text("Profile",style: TextStyle(fontSize: 12.0, color:Colors.white))
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Icon(Icons.settings,size: 32.0,color:Colors.white ),
                  Text("Settings",style: TextStyle(fontSize: 12.0, color:Colors.white))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyWidget(context){
    return Wrap(children: <Widget>[
      // SizedBox(
      //   width: MediaQuery.of(context).size.width,
      //   height: 100.0,
      //   child: Container(
      //     color: Colors.white,
      //     child: Card(
      //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))),
      //       elevation: 6.05,
      //       child: selectionIcon()
      //     )
      //   ),
      // ),
      // Chip(label: Text("Your Location"),avatar: CircleAvatar(child:Icon(Icons.location_on) ,),),
      GestureDetector(child: layananWidget(),onTap: () => Navigator.pushNamed(context, '/layanan'),),
      Padding(padding: EdgeInsets.symmetric(vertical: 52.5)),
        Stack(
          children: <Widget>[
            // main paper grey
            Container(color: Colors.white10,),
            // Wrap body widgets
            Wrap(runSpacing: 25.0,
              alignment: WrapAlignment.center,
              children: <Widget>[
                // List Of body WIDGET
                usrLocWidget(),
                GestureDetector(child: paketanWidget(),
                  onTap: () => Navigator.pushNamed(context, '/paketan'),),
                // couponField(MediaQuery.of(context).size.width),
              ]
            ),
          ]
        ),
    ],);
  }

  // void coupon(){
  //   // return Card(
  //   //   elevation: 2.5,
  //   //   color: Color(myColor),
  //   //   child: Padding(
  //   //     padding: EdgeInsets.all(5.0),
  //   //     child: Column(
  //   //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //   //       children: <Widget>[
  //   //       Text("30%",style: TextStyle(fontSize: 5.0)),
  //   //       Text("OFF",style: TextStyle(fontSize: 5.0)),
  //   //     ],)
  //   //   )
  //   // );
  //   return null;
  // }
  //
  // Widget couponField(double w){
  //   return Container(
  //     width: w,
  //     // child: Card(child:coupon(),elevation: 10.0,)
  //   );
  // }



  // Widget cardWidget(){
  //   return
  // }




}
