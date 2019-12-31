import "package:flutter/material.dart";
import "package:cached_network_image/cached_network_image.dart";
import "package:states_rebuilder/states_rebuilder.dart";
import "../api/backend.dart";
// import 'package:hasura_connect/hasura_connect.dart';

class Layanan extends StatefulWidget {
  const Layanan({Key key}) : super(key:key);

  @override
  _LayananState createState() => _LayananState();
}

class _LayananState extends State<Layanan>{
  var query = """
  subscription {
    Layanan(where: {nama: {_eq: "Service"}}) {
      content
    }
  }
  """;

  @override
  Widget build(BuildContext context) {
    final api = Injector.getAsReactive<BackEnd>(context: context);
    return Scaffold(
      backgroundColor: Color(0xff6395d0),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 42.5,bottom: 22.5,left: 92.5,right: 92.5),
              child: Icon(
                Icons.settings,
                size: 175.0,
              ),
              // child: CachedNetworkImage(
              //   placeholder: (context,url) => Center(child: CircularProgressIndicator(backgroundColor: Colors.white,)),
              //   errorWidget: (context,url,error) => Center(child: Icon(Icons.error)),
              //   fit: BoxFit.fill,
              //   filterQuality: FilterQuality.high,
              //   imageUrl: "https://picsum.photos/500/500",
              // ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(22.5),
              width: double.infinity,
              height: MediaQuery.of(context).size.height*17.5/100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Service",style: TextStyle(fontSize:35.0,fontWeight: FontWeight.bold) ,),
                  Padding(
                    padding: EdgeInsets.all(10.5),
                  ),
                  Text("Mau Service Apa ?",style: TextStyle(fontSize:15.5))
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 22.5),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              // height: MediaQuery.of(context).size.height*71.5/100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25.0))
              ),

              child: StreamBuilder(
                stream: api.state.hasuraSubs(query).cast(),
                builder: (context, snapshot){
                  return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot. ? snapshot.data['data']['Layanan'][0]['content'].length : 1,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: EdgeInsets.all(7.5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.blue,
                          ),
                          height: 1.0,
                          width: 1.0,
                          child: Center(
                            child:
                            Text("${snapshot.data['data']['Layanan'][0]['content'][index]}",textAlign: TextAlign.center,) ,
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100.0,
                      mainAxisSpacing: 1.0,
                      crossAxisSpacing: 5.5,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
