import "package:flutter/material.dart";
final int myColor = 0xff75cbd5;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(floatingActionButton: FloatingActionButton(backgroundColor:Color(myColor),elevation: 5.0,
      onPressed: () => null ,
      child: Icon(Icons.person)),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 10.0,
            pinned: true,
            backgroundColor: Color(myColor),
            title: Text("Halo Service",
              style: TextStyle(
                shadows: [Shadow(color: Colors.black54,offset: Offset(0.5,0.5),blurRadius: 5.0)],
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
                        elevation: 10.0,
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
                  Text("Coupon",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Color(myColor)))
                ],)
            ),),
        ],
      ),
      //  ###  BOTTOM BAR , DISABLED  ###
      // bottomNavigationBar: BottomAppBar(
      //   color: Color(myColor),
      //   elevation: 100.0,
      //   child: Padding(
      //     padding: EdgeInsets.all(2.0),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: <Widget>[
      //         Wrap(
      //           direction: Axis.vertical,
      //           children: <Widget>[
      //             Icon(Icons.home,size: 32.0),
      //             Text("Home",style: TextStyle(fontSize: 12.0))
      //           ],
      //         ),
      //         Wrap(
      //           direction: Axis.vertical,
      //           children: <Widget>[
      //             Icon(Icons.history,size: 32.0),
      //             Text("History",style: TextStyle(fontSize: 12.0))
      //           ],
      //         ),
      //         Wrap(
      //           direction: Axis.vertical,
      //           children: <Widget>[
      //             Icon(Icons.person,size: 32.0),
      //             Text("Profile",style: TextStyle(fontSize: 12.0))
      //           ],
      //         ),
      //         Wrap(
      //           direction: Axis.vertical,
      //           children: <Widget>[
      //             Icon(Icons.settings,size: 32.0),
      //             Text("Settings",style: TextStyle(fontSize: 12.0))
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget bodyWidget(context){
    return Wrap(children: <Widget>[
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
                GestureDetector(child: cardSelections(),
                  onTap: () => Navigator.pushNamed(context, '/layanan'),),
                couponField(MediaQuery.of(context).size.width),
              ]
            ),
          ]
        ),
    ],);
  }

  void coupon(){
    // return Card(
    //   elevation: 2.5,
    //   color: Color(myColor),
    //   child: Padding(
    //     padding: EdgeInsets.all(5.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: <Widget>[
    //       Text("30%",style: TextStyle(fontSize: 5.0)),
    //       Text("OFF",style: TextStyle(fontSize: 5.0)),
    //     ],)
    //   )
    // );
    return null;
  }

  Widget couponField(double w){
    return Container(
      width: w,
      // child: Card(child:coupon(),elevation: 10.0,)
    );
  }

  Widget usrLoc(){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CircleAvatar(backgroundColor: Color(myColor),child: Icon(Icons.location_on,color: Colors.white,)),
        Wrap(direction: Axis.vertical ,
          children: <Widget>[
            Text("Your Location",style: TextStyle(fontWeight: FontWeight.w100),),
            Text("Ragunan, Jakarta Selatan",style: TextStyle(fontWeight: FontWeight.bold,color: Color(myColor)))
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
            Icon(Icons.accessibility,
              color: Color(myColor),
              size: 75.0,
            ),
            Wrap(
              direction: Axis.vertical,
              children: <Widget>[
                Text("Layanan Prima",
                style: TextStyle(fontWeight: FontWeight.bold,color: Color(myColor))
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

      GestureDetector(child: cardWidget() ,
      // onTap: () => Navigator.pushNamed(context, '/layanan'),
      ),
      GestureDetector(child: cardWidget() ,
        // onTap: () => Navigator.pushNamed(context, '/layanan'),
      ),
      GestureDetector(child: cardWidget() ,
      // onTap: () => Navigator.pushNamed(context, '/layanan'),
      ),
    ]);
  }

  Widget selectionIcon(){
    return Padding(padding: EdgeInsets.all(12.5),
        child: Wrap(alignment: WrapAlignment.spaceAround,direction: Axis.horizontal , spacing: 20.0,
        children: <Widget>[
        // Icon list below appbar search
          Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.white),radius: 25.5,backgroundColor: Color(myColor)),
              Text("Machine",style: TextStyle(fontWeight: FontWeight.bold,color: Color(myColor))),
            ],
          ),
          Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.white),radius: 25.5,backgroundColor: Color(myColor)),
              Text("Machine",style: TextStyle(fontWeight: FontWeight.bold,color: Color(myColor))),
            ],
          ),

          Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.white),radius: 25.5,backgroundColor: Color(myColor)),
              Text("Machine",style: TextStyle(fontWeight: FontWeight.bold,color: Color(myColor))),
            ],
          ),
          Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.airport_shuttle,color: Colors.white),radius: 25.5,backgroundColor: Color(myColor)),
              Text("Machine",style: TextStyle(fontWeight: FontWeight.bold,color: Color(myColor))),
            ],
          ),
        ],// end of icon list
      )
    );
  }
}
