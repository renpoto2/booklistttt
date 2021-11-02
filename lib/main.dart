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
    home: mathC(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: bookList(),
    );
  }
}

Randumar() {
  for (var i = 0; i < 5; i++) {
    var rand = math.Random();
    // 0-4の乱数を発生させます
    print(rand.nextInt(5));
    // 0.0から1.0の間で、乱数を発生させます
    // 0.0は含みますが、1.0は含まれません
    print(rand.nextDouble());
    // trueかfalseのどちらかが出ます
    print(rand.nextBool());
  }
}

class mathC extends StatefulWidget {
  final List<Movie> movieList = Movie.getMovies();
  @override
  _mathCState createState() => _mathCState();
}

class _mathCState extends State<mathC> {
  var fruits = [
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
  var random = math.Random();
  var result = "今日の晩御飯";
  void _shuffle() {
    setState(() {
      result = fruits[random.nextInt(fruits.length)];
    });
  }

  var sarvant = ['マシュ', 'ギルガメッシュ', 'カルナ'];
  var sarvantImage = [
    "https://blog.ja.playstation.com/tachyon/sites/7/2017/12/fate-grand-order-vr-feat-e3839ee382b7e383a5e383bbe382ade383aae382a8e383a9e382a4e38388-1.jpg",
    "https://fgo.news/wp/wp-content/uploads/2020/11/EnvlrdcVoAAJigG.jpg",
    "https://www.inside-games.jp/imgs/zoom/880560.jpg"
  ];
  var resultsImage =
      "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/08/27/00/00/04/83955333_p0_square1200.jpg";
  var survantResults = "鯖";
  void _survantShuffle() {
    setState(() {
      survantResults = sarvant[random.nextInt(sarvant.length)];
      if (survantResults == sarvant[0]) {
        resultsImage = sarvantImage[0];
      }
      if (survantResults == sarvant[1]) {
        resultsImage = sarvantImage[1];
      }
      if (survantResults == sarvant[2]) {
        resultsImage = sarvantImage[2];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("math"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage(resultsImage),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height:5,
              ),
              Text("サーバント",style: TextStyle(
                fontSize: 20,
              ),),
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
              Text("$survantResults",style: TextStyle(
                fontSize: 20,
              ),)
            ],
          ),
        ));
  }
}
