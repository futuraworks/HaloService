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
  ];

  final List hargaPaket = [
    450.000,
    550.000,
    750.000,
    850.000,
  ];
// Jenis paket
  Widget bodyJenisPaketan(titik,harga){
    return Padding(
      padding:EdgeInsets.fromLTRB(20.0, 2.5, 20.0, 2.5),
      child: Card(
        elevation: 2.5,
        child: Column(
          children: <Widget>[
            Icon(Icons.person,size: 60.0,),
            Expanded(
              child: Text("Check Mesin Kendaraan",style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Text("$titik Titik Pengechekan"),
            Text("Rp. $harga"),
            Container(child: Text("Pesan"),color: Colors.blue,),
            SizedBox(height: 20.0,)
          ],
        ),
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
          Padding(padding: EdgeInsets.all(25.0)),
          // Jenis Layanan
          Row(children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 25.0)),
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
            backgroundColor: Color(0xff75cbd5),
            title: Text("Layanan Prima",style: TextStyle(fontSize: 27.5)),
            centerTitle: true,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: headerPaketan(),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index){
              return bodyJenisPaketan("${titikPengecekan[index]}","${hargaPaket[index]}");
            },
            childCount: 4 // NUMBER OF CARD TO DISPLAY
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
