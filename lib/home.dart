import "package:flutter/material.dart";
import "widget/layanan.dart";
import "widget/location.dart";

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 50.5, 0.0, 7.5),
              child:Column(
                children: <Widget>[
                  // SEARCH AND SETTINGS ICON
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal: 17.5),
                        child:Text("Welcome, User !",style: TextStyle(fontSize: 27.5,fontWeight: FontWeight.w900))
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.5),
                        child:GestureDetector(
                          child: Icon(Icons.settings,color: Color(0xff75cbd5),
                          )
                        ),
                      )
                  ],),

                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  // TEXT FIELD
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.5),
                    child: Container(
                      child: Card(
                        shape: ShapeB,
                        elevation: 3.8,
                        child: TextField(
                          style: TextStyle(color: Color(0xff75cbd5)),
                          cursorColor: Color(0xff75cbe5) ,
                          // textAlignVertical: TextAlignVertical(y: 1.0),
                          onTap: () => null,
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              onPressed: () => null,
                              icon: Icon(Icons.search,color: Color(0xff6395d0),),
                            ),
                            hasFloatingPlaceholder: false,
                            labelText: "Book Your Services",
                            labelStyle: TextStyle(color: Colors.grey),
                            // suffix: Text("dwd"),
                            hintText: "",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            ),
                            border: InputBorder.none,
                            //suffixIcon:
                            filled: true,
                            fillColor: Colors.white
                           ),
                         ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: usrLocWidget(),
                    //onTap: () => Navigator.pushNamed(context, '/login'),
                  )
                ],
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index){
              return layananWidget(index);
            },
            childCount: 5 // NUMBER OF CARD TO DISPLAY
          ),
            //  SIZE ??
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 1.0,
              mainAxisSpacing: 1.0, //top bot spacing
            ),
          ),
        ],
      ),
    );
  }
}
