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

  void _tappedNumberButton() {}
  void _shuffle() {
    setState(() {
      result = fruits[random.nextInt(fruits.length)];
    });
  }

  late String sarVant;
  late String sarVantImage;

  @override
  Widget build(BuildContext context) {
    var list;
    return Scaffold(
      appBar: AppBar(
        title: Text("math"),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  NumberButton(int i, tappedNumberButton);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange,
          image: DecorationImage(
            image: NetworkImage(
              "https://blog.ja.playstation.com/tachyon/sites/7/2017/12/fate-grand-order-vr-feat-e3839ee382b7e383a5e383bbe382ade383aae382a8e383a9e382a4e38388-1.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: FlatButton(
            child: Text(
              'WW',
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {}),
      ),
    );
  }
}

class sarvantXX extends StatefulWidget {
  @override
  _sarvantXX createState() => _sarvantXX();
}

class _sarvantXX extends State<sarvantXX> {
  var random2 = math.Random();
  var SarvantName = [
    "ロードエルメロイ2世",
    "マシュ",
    "ギルガメッシュ",
    "カルナ",
    "モルガン",
    "景清",
    "ガウェイン",
    "ジャンヌ",
    "マーリン",
    "ヴァーヴァンシー",
    "ディオスクロイ",
    "キリシュタシア様",
    "アルトリア",
    "クーフーリン・オルタ",
    "アンリマユ",
    "衛宮切嗣",
  ];
  var sarvant2 = [
    'マシュ',
    'ギルガメッシュ',
    'カルナ',
  ];
  var resultsImage2 =
      "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/08/27/00/00/04/83955333_p0_square1200.jpg";
  var survantResults2 = "鯖";
  void _survantShuffle() {
    setState(() {
      survantResults2 = sarvant2[random2.nextInt(sarvant2.length)];
      if (survantResults2 == sarvant2[0]) {
        resultsImage2 = sarvantImage2[0];
      }
      if (survantResults2 == sarvant2[1]) {
        resultsImage2 = sarvantImage2[1];
      }
      if (survantResults2 == sarvant2[2]) {
        resultsImage2 = sarvantImage2[2];
      }
    });
  }

  var sarvantImage2 = [
    "https://blog.ja.playstation.com/tachyon/sites/7/2017/12/fate-grand-order-vr-feat-e3839ee382b7e383a5e383bbe382ade383aae382a8e383a9e382a4e38388-1.jpg",
    "https://fgo.news/wp/wp-content/uploads/2020/11/EnvlrdcVoAAJigG.jpg",
    "https://www.inside-games.jp/imgs/zoom/880560.jpg",
    "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2021/07/12/00/00/05/91182994_p0_square1200.jpg",
    "https://shop.r10s.jp/animeearth/cabinet/06085115/imgrc0081462608.jpg",
    "https://bnewg.up.seesaa.net/image/02091852.jpg",
    "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2016/12/24/00/06/38/60512512_p0_square1200.jpg",
    "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/02/25/21/33/52/79726498_p0_square1200.jpg",
    "https://pbs.twimg.com/media/CfDacIOUAAAyojB.jpg",
    "https://lh3.googleusercontent.com/KXqCm0p0LRNYXJumyMLLaSuAKydLNQPoUvNvgUwGxnaJRPGWx1cc99EvJQ0CT6HrwmMBKPJFUQhAEwzqBAvOSjk8YvFiu4iv7QrwfXrZ5z3XKg",
    "https://livedoor.blogimg.jp/sgmm1205/imgs/6/f/6f89cb1e.jpg",
    "https://img.gamewith.jp/img/a8b01cf9acf6618814abe291bb90bf44.jpg",
    "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2016/12/23/00/00/02/60494620_p0_square1200.jpg",
    "https://i2.wp.com/xn--fgo-yb4b8dta56dif.xyz/wp-content/uploads/2021/06/C8SIYuu.jpeg?ssl=1",
    "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/11/12/18/12/14/85624094_p0_square1200.jpg",
    "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/08/27/00/00/04/83955333_p0_square1200.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var list2 = [
      _photoItem(
          "https://shop.r10s.jp/animeearth/cabinet/06085115/imgrc0081462608.jpg"),
      _photoItem(
          "https://blog.ja.playstation.com/tachyon/sites/7/2017/12/fate-grand-order-vr-feat-e3839ee382b7e383a5e383bbe382ade383aae382a8e383a9e382a4e38388-1.jpg"),
      _photoItem(
          "https://fgo.news/wp/wp-content/uploads/2020/11/EnvlrdcVoAAJigG.jpg"),
      _photoItem("https://www.inside-games.jp/imgs/zoom/880560.jpg"),
      _photoItem(
          "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2021/07/12/00/00/05/91182994_p0_square1200.jpg"),
      _photoItem(
          "https://lh3.googleusercontent.com/KXqCm0p0LRNYXJumyMLLaSuAKydLNQPoUvNvgUwGxnaJRPGWx1cc99EvJQ0CT6HrwmMBKPJFUQhAEwzqBAvOSjk8YvFiu4iv7QrwfXrZ5z3XKg"),
      _photoItem("https://livedoor.blogimg.jp/sgmm1205/imgs/6/f/6f89cb1e.jpg"),
      _photoItem(
          "https://img.gamewith.jp/img/a8b01cf9acf6618814abe291bb90bf44.jpg"),
      _photoItem(
          "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2016/12/23/00/00/02/60494620_p0_square1200.jpg"),
      _photoItem(
          "https://i2.wp.com/xn--fgo-yb4b8dta56dif.xyz/wp-content/uploads/2021/06/C8SIYuu.jpeg?ssl=1"),
      _photoItem(
          "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/11/12/18/12/14/85624094_p0_square1200.jpg"),
      _photoItem(
          "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/08/27/00/00/04/83955333_p0_square1200.jpg"),
      _photoItem(
          "https://cdn-ak.f.st-hatena.com/images/fotolife/i/index1701/20180908/20180908164755.png"),
      _photoItem(
          "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2016/12/24/00/06/38/60512512_p0_square1200.jpg"),
      _photoItem(
          "https://i-ogp.pximg.net/c/540x540_70/img-master/img/2020/02/25/21/33/52/79726498_p0_square1200.jpg"),
      _photoItem("https://pbs.twimg.com/media/CfDacIOUAAAyojB.jpg"),
    ];

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
                    child: GridView.count(
                      mainAxisSpacing: 4,
                      crossAxisCount: 4,
                      crossAxisSpacing: 3,
                      children: list2,
                    ),
                  ),
                ],
              ),
            )));
  }

  Widget _photoItem(String imageS) {
    var assetsImage = imageS;
    int checkA = 0;
    return InkWell(
      child: Container(
        width: 95,
        height: 95,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange,
          image: DecorationImage(
            image: NetworkImage(
              assetsImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        // child: FlatButton(),
      ),
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
 var fruitX =fruits2;
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

                  title: Text(SarvantName[tappedNum],style: TextStyle(
                      fontSize: 20
                  ),),
                  content: Text(SarvantD[tappedNum],style: TextStyle(
                    fontSize: 15
                  ),),

                  actions: <Widget>[
                    FlatButton(
                      child: Text('詳細',style: TextStyle(
                          color: Colors.lightBlue
                      ),),
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
                      child:  Text('OK'),
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
