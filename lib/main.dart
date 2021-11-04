import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'addition/movie.dart';
import 'booklist_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: KK(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:KK(),
    );
  }
}

class KK extends StatefulWidget {
  @override
  _KK createState() => _KK();
}

class _KK extends State<KK> {
  var random2 = math.Random();

  var SarvantName = SarvantNameOrigin;
  var resultsImage2 =
      "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/08/27/00/00/04/83955333_p0_square1200.jpg";
  var survantResults2 = "鯖";
  var sarvantImage2 = SarvantImageOrigin;
  void _survantShuffle() {
    setState(() {
      survantResults2 = SarvantName[random2.nextInt(SarvantName.length)];
      print(survantResults2);
      int NumOfSar = SarvantName.indexOf(survantResults2);
      print(NumOfSar);

      resultsImage2 = sarvantImage2[NumOfSar];
      debugPrint(SarvantD[1]);
    });
  }

  var fruitX = fruits2;
  var SarvantD = SarvantDetail;
  int castID = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(resultsImage2),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$survantResults2",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FloatingActionButton(
                    onPressed: _survantShuffle,
                    child: Icon(Icons.accessibility_sharp),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 300,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemCount: sarvantImage2.length,
                        itemBuilder: (BuildContext context, int index) {
                          return _photoItem2(sarvantImage2[index], index);
                        }),
                  ),
                ],
              ),
            )));
  }

  Widget _photoItem2(String imageX, int viewNum) {
    var assetsImageX = imageX;
    int tappedNum = viewNum;
    return InkWell(
      onTap: () {
        debugPrint("piepie$tappedNum");
        showDialog(
            context: context,
            builder: (context) {
              return Center(
                child: AlertDialog(
                  title: Text(
                    SarvantName[tappedNum],
                    style: TextStyle(fontSize: 20),
                  ),
                  content: Text(
                    SarvantD[tappedNum],
                    style: TextStyle(fontSize: 15),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text(
                        '詳細',
                        style: TextStyle(color: Colors.lightBlue),
                      ),
                      onPressed: () {
                        debugPrint(SarvantD[1]);
                        // （1） 指定した画面に遷移する
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // （2） 実際に表示するページ(ウィジェット)を指定する
                                builder: (context) => FirstPage(tappedNum)));
                      },
                    ),
                    FlatButton(
                      child: Text('OK'),
                      onPressed: () => Navigator.of(context).pop(0),
                    ),
                  ],
                ),
              );
            });
      },
      child: Container(
        width: 95,
        height: 95,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange,
          image: DecorationImage(
            image: NetworkImage(
              assetsImageX,
            ),
            fit: BoxFit.cover,
          ),
        ),
        // child: FlatButton(),
      ),
    );
  }
}
