import "package:flutter/material.dart";
import "widget/layanan.dart";
import "widget/location.dart";
import "package:states_rebuilder/states_rebuilder.dart";
import "api/backend.dart";
// import 'package:hasura_connect/hasura_connect.dart';

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key:key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  var homeQuery = """
  subscription hQ{
    Layanan(order_by: {id: asc}) {
      id
      nama
      urlGambar
    }
  }
  """;
  // HasuraConnect hasura;

  // @override
  // initState() {
  //   super.initState();
  //   // hasura = HasuraConnect(
  //   //   "https://hasura-futuraworks.cloud.okteto.net/v1/graphql",
  //   //   headers: {'x-hasura-admin-secret': 'hasuraarusah'},
  //   // );
  //
  // }

  @override
  Widget build(BuildContext context) {
    final api = Injector.getAsReactive<BackEnd>(context: context);
    return new Scaffold(
      backgroundColor: Colors.white,
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
                          child: Icon(Icons.settings,color: Color(0xff6395d0),
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
                    child: SizedBox(
                      height: 50,
                      child: Card(
                        // shape: ShapeBo,
                        elevation: 3.8,
                        child: TextField(
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Color(0xff6395d0)),
                          cursorColor: Color(0xff6395d0) ,
                          // textAlignVertical: TextAlignVertical(y: 1.0),
                          onTap: () => null,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(7.5),
                            prefixIcon: IconButton(
                              alignment: Alignment.center,
                              onPressed: () => null,
                              icon: Icon(Icons.search,color: Color(0xff6395d0),),
                            ),
                            hasFloatingPlaceholder: false,
                            labelText: "Book Your Services",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            // suffix: Text("dededed"),
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
          StreamBuilder(
            // stream: hasura.subscription(homeQuery).cast(),
            stream: api.state.hasuraSubs(homeQuery).cast(),
            builder: (context, snapshot){
            return SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index){
                if (!snapshot.hasData){
                  return Dialog(
                    child: CircularProgressIndicator(),
                  );
                }
                else {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/layanan'),
                    child: layananWidget(snapshot.data['data']['Layanan'][index])
                  );
                }
              },
              childCount: snapshot.hasData ? snapshot.data['data']['Layanan'].length : 1 // NUMBER OF CARD TO DISPLAY
            ),
              //  SIZE ??
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                crossAxisSpacing: 0.0,
                childAspectRatio: 1.0,
                mainAxisSpacing: 1.0, //top bot spacing
              ),
            );
          }),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: null,
      //   elevation: 12.5,
      //   tooltip: "Daftar Transaksi",
      //   backgroundColor: Color(0xff6395d0),
      //   label: Text("Riwayat"),
      //   icon: Icon(Icons.history),
      // ),
      bottomNavigationBar: InkWell(
        child: Container(
          height: 60,
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Column(
              children: <Widget>[
                Icon(Icons.history,color: Colors.blue,),
                Text("Riwayat",style: TextStyle(color: Colors.blue),)
              ],
            ),
          ),
        ),
      )
    );
  }
}
