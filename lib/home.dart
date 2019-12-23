import "package:flutter/material.dart";
import "widget/layanan.dart";
import "widget/location.dart";
import "widget/paketan.dart";
import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:cached_network_image/cached_network_image.dart";

class Home extends StatefulWidget {
  const Home({Key key}) : super(key:key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  int _curIndex = 0;

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
                          style: TextStyle(color: Color(0xff75cbd5)),
                          cursorColor: Color(0xff75cbe5) ,
                          textAlignVertical: TextAlignVertical(y: 1.0),
                          onTap: () => null,
                          decoration: InputDecoration(
                            hasFloatingPlaceholder: false,
                            labelText: "Mau Cari Apa ... ",
                            labelStyle: TextStyle(color: Colors.grey),
                            // suffix: Text("dwd"),
                            hintText: "",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            ),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () => null,
                              icon: Icon(Icons.search,color: Color(0xff75cbd5),),),
                            filled: true,
                            fillColor: Colors.white
                           ),
                         ),
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
          // Layanan Widget Builder
          SliverToBoxAdapter(
            child: Container(
              // padding: EdgeInsets.symmetric(vertical: 7.5),
              height: 87.5,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 7.5),
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context,index){
                  return GestureDetector(
                    child: layananWidget(),
                    onTap: () => Navigator.pushNamed(context, '/layanan')
                  );
                },
              ),
            ),
          ),
          // User Location Widget
          SliverToBoxAdapter(
            child: GestureDetector(
              child: usrLocWidget(),
              onTap: () => Navigator.pushNamed(context, '/login'),
            )
          ),
          // Paketan Widget Builder
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context,index) => GestureDetector(
                child: paketanWidget(),
                onTap: () => Navigator.pushNamed(context, '/paketan'),
              ),childCount: 4 // number of items
            )
          ),
          // Fill remaining space with Coupon Widget
          SliverToBoxAdapter(
            //hasScrollBody: true,
            child: Padding(
              padding: EdgeInsets.all(7.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "List of Coupon",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,fontWeight: FontWeight.bold,
                      color: Color(0xff75cbd5)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.5),
                    child: CachedNetworkImage(
                      imageUrl: "https://loremflickr.com/400/300/cat",
                      placeholder: (context,url) => CircularProgressIndicator(),
                      errorWidget: (context,url,error) => Icon(Icons.error),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.5),
                    child: CachedNetworkImage(
                      imageUrl: "https://loremflickr.com/300/200/person",
                      placeholder: (context,url) => CircularProgressIndicator(),
                      errorWidget: (context,url,error) => Icon(Icons.error),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            )
            // child: Container(
            //   padding: EdgeInsets.symmetric(vertical: 7.5),
            //   color: Colors.white,
            //   child: Column(
            //     // direction: Axis.vertical,
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: <Widget>[
            //       Text("Coupon",
            //       style: TextStyle(
            //         fontSize: 25.0,fontWeight: FontWeight.bold,
            //         color: Color(0xff75cbd5)
            //         )
            //       ),
            //     ],
            //   )
            // ),
          ),
        ],
      ),
      //  ###  BOTTOM BAR , Enabled  ###
      bottomNavigationBar: CurvedNavigationBar(
        // buttonBackgroundColor: Colors.black,
        animationDuration: Duration(milliseconds: 275),
        height: 52.5,
        color: Color(0xff75cbd5),
        // currentIndex: 0,
        // elevation: 50.0,
        // selectedItemColor: Colors.blue,
        // selectedLabelStyle: TextStyle(color: Colors.blue),
        // unselectedItemColor: Colors.white,
        // unselectedLabelStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.transparent,
        // type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState((){
            this._curIndex = index;
          });
        },
        items: [
          Icon(Icons.home,size: 32.0,color: Colors.white ),
          Icon(Icons.history,size: 32.0,color:Colors.white ),
          Icon(Icons.person,size: 32.0,color:Colors.white ),
          Icon(Icons.settings,size: 32.0,color:Colors.white )
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home,size: 32.0,color: Colors.white ),
          //   title: Text("Beranda",style: TextStyle(fontSize: 12.0, color:Colors.white))
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.history,size: 32.0,color:Colors.white ),
          //   title: Text("Riwayat",style: TextStyle(fontSize: 12.0, color:Colors.white))
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person,size: 32.0,color:Colors.white ),
          //   title: Text("Profil",style: TextStyle(fontSize: 12.0, color:Colors.white))
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings,size: 32.0,color:Colors.white ),
          //   title: Text("Pengature",style: TextStyle(fontSize: 12.0, color:Colors.white))
          // ),
        ],
      ),
    );
  }
}
