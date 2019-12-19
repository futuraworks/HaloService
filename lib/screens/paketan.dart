import "package:flutter/material.dart";

class Paketan extends StatefulWidget {
  const Paketan({Key key}) : super(key:key);

  @override
  _PaketanState createState() => _PaketanState();
}

class _PaketanState extends State<Paketan>{

  final List titikPengecekan = [
    25,
    36,
    56,
    64,
    64,

  ];

  final List hargaPaket = [
    450000,
    550000,
    750000,
    850000,
    64,

  ];
// Jenis paket
  Widget bodyJenisPaketan(titik,harga){
    //return Padding(
      // padding:EdgeInsets.fromLTRB(20.0, 2.5, 20.0, 2.5),
    //  child:
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5)),
      color: Color(0xff75cbd5),
        elevation: 5.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.person,size: 80.0, color: Colors.white,),
            Text("$titik Titik Pengecekan", style: TextStyle(color: Colors.white),),
            Text("Rp. $harga", style: TextStyle(color: Colors.white)),
            SizedBox(height: 10.0,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.5)),color: Colors.white),
              child: Text(
                "Pesan",
                style: TextStyle(
                  color:  Color(0xff75cbd5),
                  fontWeight: FontWeight.bold,fontSize: 17.5)
              )
            ),
            SizedBox(height: 10.0,)
          ],
        ),
      );
  }

  Widget headerPaketan(){
    return Container(
      color: Colors.transparent,
      child: Column(
        // 2 Main Widget inside Column , header A and header B
        //
        // HEADER A
        children: <Widget>[
          //////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            //  HEADER IMAGE
            Icon(
              Icons.person,
              size: 150.0,
              color: Color(0xff75cbd5)
            ),
            //  HEADER TEXT
            Expanded(
              child: Text(
                "Terimakasih Sudah Memilih Layanan Ini",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff75cbd5)
                )
              ),
            ),
          ]),
          ////////////////////
          //  HEADER B
          //  Text 1 and Text 2
          //  Mobil
          Text("Mobil",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,
            color: Color(0xff75cbd5)
          )),
          // Spacing
          Padding(padding: EdgeInsets.all(17.5)),
          // Jenis Layanan
          Row(children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 32.5)),
            Text(
              "Jenis Layanan",
              style: TextStyle(
                color: Color(0xff75cbd5),
                fontSize: 17.5),
              )
            ],
          ),
          // Spacing
          Padding(padding: EdgeInsets.all(5.0)),  //Space
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 10.0,
            backgroundColor: Color(0xff75cbd5),
            title: Text("Layanan Prima",style: TextStyle(fontSize: 27.5)),
            centerTitle: true,
            floating: true,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: headerPaketan(),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index){
              return bodyJenisPaketan("${titikPengecekan[index]}","${hargaPaket[index]}");
            },
            childCount: 5 // NUMBER OF CARD TO DISPLAY
          ),
            //  SIZE ??
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 225.0,
              crossAxisSpacing: 1.0,
              childAspectRatio: 1.0,
              mainAxisSpacing: 15.0, //top bot spacing
            ),
          ),
        ],
      )
    );
  }
}
