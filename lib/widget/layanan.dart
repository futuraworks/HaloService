import "package:flutter/material.dart";
import "package:cached_network_image/cached_network_image.dart";
import "../api/backend.dart";

Widget layananWidget(data){
  return Padding(
    padding: EdgeInsets.all(12.5),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      color: Color(0xff6395d0),
      elevation: 7.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                placeholder: (context,url) => Center(child: CircularProgressIndicator(backgroundColor: Colors.white,)),
                errorWidget: (context,url,error) => Center(child: Icon(Icons.error)),
                imageUrl: data['urlGambar'],
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(7.5),
                    child: Text(
                      data['nama'],
                      style: TextStyle(color: Colors.white,fontSize: 22.5,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
    ),
  );
}
