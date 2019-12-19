import "package:flutter/material.dart";

class Layanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innedBoxIsScrolled){
          return <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xff75cbd5),
            elevation: 10.0,
            expandedHeight: 150.0,
            floating: false,
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
        ];
      },
        body: Stack(children: <Widget>[
          Container(color: Colors.white10),
        ])
      ),
    );
  }
}
