import 'package:flutter/material.dart';
import 'package:kimetunoyaibaquizapp/app_background/app_background.dart';
import 'package:kimetunoyaibaquizapp/easy_quiz/easy_quiz_page0.dart';
import 'package:kimetunoyaibaquizapp/hard_quiz/hard_quiz_page0.dart';
import 'package:kimetunoyaibaquizapp/normal_quiz/normal_quiz_page0.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kimetu_no_yaiba quiz',
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground(
            child: Container(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '鬼滅の刃クイズ！！',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Image.asset(
                    'toumei_katana.png',
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    //ゲームが始まる遷移
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EasyQuizPage0(counter)),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.100),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.blue[300],
                          Colors.blue[500],
                          Colors.blue[700],
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.100),
                    child: Text('      初級      '),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: RaisedButton(
                  onPressed: () {
                    //ゲームが始まる遷移
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NormalQuizPage0(counter)),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.100),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.yellow[300],
                          Colors.yellow[500],
                          Colors.yellow[700],
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.100),
                    child: Text('      中級      '),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: RaisedButton(
                  onPressed: () {
                    //ゲームが始まる遷移
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HardQuizPage0(counter)),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.100),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.red[300],
                          Colors.red[500],
                          Colors.red[700],
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.100),
                    child: Text('      上級      '),
                  ),
                ),
              ),
            ]),
      ),
    )));
  }
}
