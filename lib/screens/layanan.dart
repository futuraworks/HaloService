import "package:flutter/material.dart";
// import "dart:convert";

class Layanan extends StatefulWidget {
  const Layanan({Key key}) : super(key:key);

  @override
  _LayananState createState() => _LayananState();
}

class _LayananState extends State<Layanan>{

// PREFERRED MODEL
// var jenisKerusakan = [
//   {"Berat":"12"},
//   {"Sedang":"33"},
//   {"Ringan":"66"},
// ];
  var titikCekKerusakan = [
    12,
    36,
    66,
    72,
    89,

  ];
  var levelKerusakan = [
    "Ringan",
    "Sedang",
    "Berat",
    "Berat",
    "Berat",
  ];

  Widget bodyJenisLayanan(var level,titik){
    var text;
    switch(level){
      case 'Berat': {text = "Lebih dari";}
        break;
      case 'Sedang': {text = "Mencapai";}
        break;
      case 'Ringan': {text = "Tidak Mencapai";}
        break;

      default:  {text = "Lebih dari";}
        break;
    }
    return Container(
      padding: EdgeInsets.fromLTRB(5.0, 7.5, 5.0, 7.5),
      height: 100.0,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5)),
        color: Color(0xff75cbd5),
          elevation: 5.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.person,size: 80.0, color: Colors.white,),
              Container(
                // height: 100.0,
                width: 200.0,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text("Rusak $level", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  Text("Kerusakan $text $titik titik kerusakan ",textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                  // SizedBox(height: 10.0,),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Container(
                padding: EdgeInsets.all(2.5),
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.5)),color: Colors.white),
                child: Text(
                  "Pesan",
                  style: TextStyle(
                    color:  Color(0xff75cbd5),
                    fontWeight: FontWeight.bold,
                    fontSize: 15.5)
                )
              ),
            )
              // SizedBox(height: 10.0,)
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:  <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xff75cbd5),
            elevation: 10.0,
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Mesin", // service name
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0
              )),
              background: Image.network(
                "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg",
                // fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Layanan ini merupakan layanan untuk pengecekan hanya pada bagian mesin kendaraan saja", style: TextStyle(color: Color(0xff75cbd5)) , textAlign: TextAlign.center),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context,index) => bodyJenisLayanan("${levelKerusakan[index]}","${titikCekKerusakan[index]}"),
            childCount: 5),
          ),
        ],
      ),
    );
  }
}
