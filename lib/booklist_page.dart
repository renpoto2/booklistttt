import 'package:booklistttt/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'addition/movie.dart';


class bookList extends StatelessWidget {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('books').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("boookliiist!"),

      ),
      body: Center(
        child: StreamBuilder<QuerySnapshot>(
          stream: _usersStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Text("Loading");
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                return ListTile(
                  title: Text(data['title']),
                  subtitle: Text(data['author']),
                );
              }).toList(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

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