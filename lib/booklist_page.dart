import 'package:booklistttt/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'addition/movie.dart';


class FirstPage extends StatelessWidget{
  FirstPage(this.Num);
  int Num;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title : Text("サーヴァント詳細")
        ),
        body : Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(

              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(SarvantImageXX[Num]),
                        fit: BoxFit.cover,
                      )),
                ),
                Text(SarvantNamePie[Num],style: TextStyle(
                  fontSize: 30
                ),),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(SarvantDetail[Num],style: TextStyle(
                      fontSize:20
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    child: Text(SaravantMDetail[Num],style: TextStyle(
                        fontSize: 14
                    ),),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}


var fruits2 = [
  'apple',
  'banana',
  'peach',
  'lemon',
  'orange',
  'cherry',
  'watermelon',
  'kiwifruit',
  'grape'
];

var SarvantNamePie = SarvantNameOrigin;

var SarvantDetail = SarvantDetailOrigin;

var SarvantImageXX  =  SarvantImageOrigin;

var SaravantMDetail = SarvantMoreDetailOrigin;